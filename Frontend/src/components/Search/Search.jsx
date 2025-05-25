import React, { useEffect, useState, useContext } from "react";
import "../Search/search.scss";
import LocationSelect from "./LocationSelect/LocationSelect";
import Button from "../ui/Button/Button";
import Fluid from "../ui/Fluid/Fluid";
import DateRangeSearch from "../Search/DateRangeSearch/DateRangeSearch";
import { getAvailableProductsByDateAndCity } from "../../api/services/services";
import GlobalContext from "../../context/GlobalContext";
import { convertDateEs } from "../../utils/stringConvertions";

/**
 * Search component for searching available products by date and city.
 *
 * @component
 * @returns {JSX.Element} The rendered search component.
 */
const Search = () => {
  const [startDate, setStartDate] = useState("");
  const [endDate, setEndDate] = useState("");
  const [error, setError] = useState("");
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
    if (!startDate || !endDate) {
      setError("Las fechas de búsqueda son obligatorias");
      return;
    }

    setError("");
    setLoadingRecommendations(true);
    const productsByDateAndCity = await getAvailableProductsByDateAndCity(
      startDate,
      endDate,
      cityId
    );
    setRecommendations(productsByDateAndCity.data);

    setLoadingRecommendations(false);
    let title = "Recomendaciones disponibles";

    if (selectedOption.cityName) {
      title += ` en ${selectedOption.cityName}`;
    }

    if (titleStartDate && titleEndDate) {
      title += ` entre ${titleStartDate} y ${titleEndDate}`;
    }

    setTitle(title);

    sessionStorage.clear();
  };

  return (
    <Fluid bgColor="dark" padding="padding_container">
      <h1 className="searchBar_header">
        Busca ofertas en hoteles, casas y mucho más
      </h1>

      <div className="searchBar_form_container">
        <LocationSelect />
        <div>
          <DateRangeSearch />
          {error && <span className="search_error">{error}</span>}
        </div>

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
