import React, { useEffect, useState, useContext } from "react";
import "../Search/search.scss";
import LocationSelect from "./LocationSelect/LocationSelect";
import Button from "../ui/Button/Button";
import Fluid from "../ui/Fluid/Fluid";
import DateRangeSearch from "../Search/DateRangeSearch/DateRangeSearch";
import { getAvailableProductsByDateAndCity } from "../../api/services/services";
import GlobalContext from "../../context/GlobalContext";
import { convertDateEs } from "../../utils/stringConvertions";

const Search = () => {
  const [startDate, setStartDate] = useState("");
  const [endDate, setEndDate] = useState("");
  const {
    setRecommendations,
    setTitle,
    selectedOption,
    bookingDate,
    setLoadingRecommendations,
  } = useContext(GlobalContext);

  const titleStartDate = startDate ? convertDateEs(startDate) : null;
  const titleEndDate = endDate ? convertDateEs(endDate) : null;

  useEffect(() => {
    setStartDate(sessionStorage.getItem("startDate"));
    setEndDate(sessionStorage.getItem("endDate"));
  }, [bookingDate]);

  const handleClickSearch = async (startDate, endDate) => {
    const cityId = selectedOption.cityId;
    setLoadingRecommendations(true);
    const productsByDateAndCity = await getAvailableProductsByDateAndCity(
      startDate,
      endDate,
      cityId
    );
    setRecommendations(productsByDateAndCity.data);
    setLoadingRecommendations(false);
    setTitle(
      `Recomendaciones disponibles en ${selectedOption.cityName} entre ${titleStartDate} y ${titleEndDate}`
    );
    sessionStorage.clear();
  };

  return (
    <Fluid bgColor="dark" padding="padding_container">
      <h1 className="searchBar_header">
        Busca ofertas en hoteles, casas y mucho más
      </h1>
      <div className="searchBar_form_container">
        <LocationSelect />
        <DateRangeSearch />
        <Button
          onClick={() => handleClickSearch(startDate, endDate)}
          variant="button1"
          type="submit"
        >
          Buscar
        </Button>
      </div>
    </Fluid>
  );
};

export default Search;
