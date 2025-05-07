import React, { useState, useEffect, useContext } from "react";
import { format } from "date-fns";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCalendarDay } from "@fortawesome/free-solid-svg-icons";
import { DayPicker } from "react-day-picker";
import es from "date-fns/locale/es";
import Button from "../../ui/Button/Button";
import "react-day-picker/dist/style.css";
import "./dateRangeSearch.scss";
import { getAvailableProductsByDate } from "../../../api/services/services";
import GlobalContext from "../../../context/GlobalContext";

const DateRangeSearch = ({ error, setError }) => {
  const [selectedRange, setSelectedRange] = useState({
    from: null,
    to: null,
  });
  const [showMobile, setShowMobile] = useState(false);
  const today = new Date();

  const [fromValue, setFromValue] = useState("");
  const [toValue, setToValue] = useState("");

  const [isOpen, setIsOpen] = useState(false);
  const toggling = () => setIsOpen((prevState) => !prevState);

  const [dateSelected, setDateSelected] = useState(null);

  const {
    setRecommendations,
    setTitle,
    setBookingDate,
    setLoadingRecommendations,
  } = useContext(GlobalContext);

  const handleButtonClickConfirm = () => {
    setDateSelected({ startDate: fromValue, endDate: toValue });

    const searchedFrom = format(selectedRange.from, "dd/MM/y");
    const searchedTo = format(selectedRange.to, "dd/MM/y");

    setTitle(
      `Recomendaciones disponibles entre ${searchedFrom} y ${searchedTo}`
    );

    setIsOpen(false);
  };

  const handleRangeSelect = (range) => {
    setSelectedRange(range);
    if (range?.from) {
      setFromValue(format(range.from, "y-MM-dd"));
    } else {
      setFromValue("");
    }
    if (range?.to) {
      setToValue(format(range.to, "y-MM-dd"));
    } else {
      setToValue("");
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

  useEffect(() => {
    if (dateSelected) {
      setLoadingRecommendations(true);
      const { startDate, endDate } = dateSelected;
      sessionStorage.setItem("startDate", startDate);
      sessionStorage.setItem("endDate", endDate);
      const fetchAvailableProductsByDate = async () => {
        const productsByDate = await getAvailableProductsByDate(
          startDate,
          endDate
        );
        setRecommendations(productsByDate.data);
        setBookingDate(true);
        setLoadingRecommendations(false);
      };
      fetchAvailableProductsByDate();
    }
  }, [dateSelected]);

  const disabledDays = [{ from: new Date(1800, 1, 1), to: new Date() }];

  return (
    <>
      <div className="date_search_input">
        <div className="date_search_select">
          <div
            onClick={toggling}
            className={`date_search_option ${
              selectedRange && dateSelected ? "selected" : ""
            }`}
          >
            <div
              className={`icon_default ${
                selectedRange && dateSelected ? "selected" : ""
              }`}
            >
              <FontAwesomeIcon icon={faCalendarDay} size="xl" />
            </div>
            {selectedRange &&
            selectedRange.to &&
            selectedRange.from &&
            dateSelected
              ? `${format(selectedRange.from, "dd/MM/y")} - ${format(
                  selectedRange.to,
                  "dd/MM/y"
                )}`
              : `Check in - Check out`}
          </div>

          {isOpen && (
            <div className="date_range_search_container">
              <div className="date_range_search_vertical_divider" />
              <DayPicker
                mode="range"
                selected={selectedRange}
                onSelect={handleRangeSelect}
                numberOfMonths={showMobile ? 1 : 2}
                locale={es}
                defaultMonth={today}
                fromMonth={today}
                disabled={disabledDays}
                className="home"
              />
              <div className="date_range_search_button">
                <Button
                  variant="button9"
                  onClick={handleButtonClickConfirm}
                  disabled={!selectedRange?.to || !selectedRange?.from}
                >
                  Aplicar
                </Button>
              </div>
            </div>
          )}
        </div>
        {error && <p className="search_error">{error}</p>}
      </div>
    </>
  );
};

export default DateRangeSearch;
