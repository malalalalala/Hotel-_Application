import React, { useState, useEffect, useContext } from "react";
import { format } from "date-fns";
import { DayPicker } from "react-day-picker";
import "react-day-picker/dist/style.css";
import "../Calendar/dateRangePicker.scss";
import es from "date-fns/locale/es";
import { getReservationsByProductId } from "../../api/services/services";

const DateRangePicker = ({
  setFromValue,
  setToValue,
  setIsDisabledRange,
  itemId,
}) => {
  const [selectedRange, setSelectedRange] = useState();
  const [showMobile, setShowMobile] = useState(false);
  const [disabledDays, setDisabledDays] = useState([]);
  const today = new Date();

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
