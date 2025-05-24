import React, { useState, useEffect, useContext } from "react";
import { format } from "date-fns";
import { DayPicker } from "react-day-picker";
import "react-day-picker/dist/style.css";
import "../Calendar/dateRangePicker.scss";
import es from "date-fns/locale/es";
import { getReservationsByProductId } from "../../api/services/services";

/**
 * DateRangePicker component for selecting a date range, with disabled dates based on reservations.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {function} props.setFromValue - Function to set the start date value.
 * @param {function} props.setToValue - Function to set the end date value.
 * @param {function} props.setIsDisabledRange - Function to set if the selected range is disabled.
 * @param {string|number} props.itemId - The ID of the item to fetch reservations for.
 * @param {string} props.initialFromValue - Initial value for the start date.
 * @param {string} props.initialToValue - Initial value for the end date.
 * @returns {JSX.Element} The rendered date range picker component.
 */
const DateRangePicker = ({
  setFromValue,
  setToValue,
  setIsDisabledRange,
  itemId,
  initialFromValue = "",
  initialToValue = ""
}) => {
  const [showMobile, setShowMobile] = useState(false);
  const [disabledDays, setDisabledDays] = useState([]);
  const today = new Date();

  // Inicializar el rango seleccionado si se pasan valores iniciales
  const parseDate = (str) => {
    if (!str || str === "__/__/__") return undefined;
    const [day, month, year] = str.split("/");
    return new Date(Number(year), Number(month) - 1, Number(day));
  };
  const [selectedRange, setSelectedRange] = useState(() => {
    const from = parseDate(initialFromValue);
    const to = parseDate(initialToValue);
    if (from && to) return { from, to };
    if (from) return { from };
    return undefined;
  });

  useEffect(() => {
    const disabledRanges = [{ from: new Date(1900, 1, 1), to: today }];

    const fetchReservationsByProductId = async (itemId) => {
      const reservations = await getReservationsByProductId(itemId);
      reservations.data.map(({ check_in, check_out }) => {
        const check_in_split = check_in.split("-");
        const check_out_split = check_out.split("-");
        return disabledRanges.push({
          from: new Date(
            check_in_split[0],
            check_in_split[1] - 1,
            check_in_split[2]
          ),
          to: new Date(
            check_out_split[0],
            check_out_split[1] - 1,
            check_out_split[2]
          ),
        });
      });
      setDisabledDays(disabledRanges);
    };
    fetchReservationsByProductId(itemId);
  }, []);

  const handleRangeSelect = (range) => {
    const rangeArray = [];

    setSelectedRange(range);
    if (range?.from) {
      rangeArray.push(range.from);
      setFromValue(format(range.from, "dd/MM/yyyy"));
    } else {
      setFromValue("");
    }
    if (range?.to) {
      rangeArray.push(range.to);
      setToValue(format(range.to, "dd/MM/yyyy"));
    } else {
      setToValue("");
    }

    if ((range.from && range.to) != null) {
      disabledDays.map(({ from, to }) => {
        if (from > rangeArray[0] && to < rangeArray[1]) {
          setIsDisabledRange(true);
        }
        return null;
      });
    } else {
      setIsDisabledRange(false);
    }
  };

  useEffect(() => {
    const handleResize = () => {
      if (window.innerWidth < 718) {
        setShowMobile(true);
      } else {
        setShowMobile(false);
      }
    };
    window.addEventListener("resize", handleResize);
    return () => {
      window.removeEventListener("resize", handleResize);
    };
  }, []);

  // Si cambian los valores iniciales, actualiza el rango seleccionado
  useEffect(() => {
    const from = parseDate(initialFromValue);
    const to = parseDate(initialToValue);
    if (from && to) setSelectedRange({ from, to });
    else if (from) setSelectedRange({ from });
    else setSelectedRange(undefined);
  }, [initialFromValue, initialToValue]);

  return (
    <div className="dateRangePicker_container">
      <div className="dateRangePicker_vertical_divider" />
      <DayPicker
        mode="range"
        selected={selectedRange}
        onSelect={handleRangeSelect}
        numberOfMonths={showMobile ? 1 : 2}
        locale={es}
        defaultMonth={today}
        fromMonth={today}
        disabled={disabledDays}
        className="reservation"
      />
    </div>
  );
};

export default DateRangePicker;
