import React, { useState, useEffect } from "react";
import {
  getCategories,
  getCities,
  getProducts,
  getProductsByCategoryId,
  getProductsByCityName,
} from "../api/services/services";

/**
 * React context for global application state (categories, recommendations, cities, etc).
 *
 * @type {React.Context}
 */
const Context = React.createContext({});

/**
 * Provider component for GlobalContext, managing global state and data fetching.
 *
 * @param {Object} props - Component props.
 * @param {React.ReactNode} props.children - The child components.
 * @returns {JSX.Element} The provider with global context value.
 */
export function GlobalContextProvider({ children }) {
  const [categories, setCategories] = useState([]);
  const [categorySelected, setCategorySelected] = useState();
  const [recommendations, setRecommendations] = useState([]);
  const [recommendationsSelected, setRecommendationsSelected] = useState();
  const [selectedOption, setSelectedOption] = useState({
    cityId: "",
    cityName: "",
  });
  const [cities, setCities] = useState([]);
  const [title, setTitle] = useState("Recomendaciones");
  const [recommendationItem, setRecommendationItem] = useState();
  const [loadingCategories, setLoadingCategories] = useState(false);
  const [loadingRecommendations, setLoadingRecommendations] = useState(false);
  const [bookingDate, setBookingDate] = useState(false);
  const [itemId, setItemId] = useState();
  const [selectedDates, setSelectedDates] = useState({
    startDate: "",
    endDate: ""
  });

  useEffect(() => {
    setLoadingCategories(true);
    const fetchCategories = async () => {
      const categories = await getCategories();
      setCategories(categories.data);
      setLoadingCategories(false);
    };
    fetchCategories();

    setLoadingRecommendations(true);
    const fetchRecommendations = async () => {
      const recommendations = await getProducts();
      setRecommendations(recommendations.data);
      setLoadingRecommendations(false);
    };
    fetchRecommendations();

    const fetchCities = async () => {
      const cities = await getCities();
      setCities(cities.data);
    };

    fetchCities();
  }, []);

  useEffect(() => {
    if (categorySelected) {
      setLoadingRecommendations(true);
      const fetchProductsByCategoryId = async () => {
        const productsByCategoryId = await getProductsByCategoryId(
          categorySelected
        );
        setRecommendations(productsByCategoryId.data);
        if (
          productsByCategoryId.data.length > 0 &&
          productsByCategoryId.data[0].category &&
          productsByCategoryId.data[0].category.title
        ) {
          setTitle(
            `Recomendaciones de ${productsByCategoryId.data[0].category.title}`
          );
        } else {
          setTitle("No hay alojamientos con estos criterios.");
        }
        setLoadingRecommendations(false);
      };
      fetchProductsByCategoryId();
    }
  }, [categorySelected]);

  useEffect(() => {
    if (selectedOption.cityName) {
      setLoadingRecommendations(true);

      const fetchProductsByCityName = async () => {
        try {
          const productsByCityName = await getProductsByCityName(
            selectedOption.cityName
          );

          if (productsByCityName.data.length === 0) {
            setTitle(
              `No se encontraron recomendaciones para ${selectedOption.cityName}`
            );
            setRecommendations([]);
          } else {
            setRecommendations(productsByCityName.data);
            setTitle(
              `Recomendaciones de ${productsByCityName.data[0].city.name}`
            );
          }
        } catch (error) {
          console.error("Error al obtener productos:", error);
          setTitle("Ocurrió un error al buscar recomendaciones");
        } finally {
          setLoadingRecommendations(false);
        }
      };

      fetchProductsByCityName();
    }
  }, [selectedOption.cityName]);

  useEffect(() => {
    if (
      selectedOption.cityId &&
      selectedDates.startDate &&
      selectedDates.endDate
    ) {
      setLoadingRecommendations(true);
      const fetchByCityAndDate = async () => {
        const result = await import("../api/services/services").then(mod => mod.getAvailableProductsByDateAndCity(selectedDates.startDate, selectedDates.endDate, selectedOption.cityId));
        setRecommendations(result.data);
        setTitle(
          result.data.length > 0
            ? `Recomendaciones disponibles en ${selectedOption.cityName} entre ${selectedDates.startDate} y ${selectedDates.endDate}`
            : "No hay alojamientos con estos criterios."
        );
        setLoadingRecommendations(false);
      };
      fetchByCityAndDate();
    }
  }, [selectedOption.cityId, selectedDates.startDate, selectedDates.endDate]);

  return (
    <Context.Provider
      value={{
        categories,
        setCategories,
        categorySelected,
        setCategorySelected,
        recommendations,
        setRecommendations,
        recommendationsSelected,
        setRecommendationsSelected,
        selectedOption,
        setSelectedOption,
        cities,
        setCities,
        title,
        setTitle,
        recommendationItem,
        setRecommendationItem, // todo es de home
        loadingCategories,
        setLoadingCategories,
        loadingRecommendations,
        setLoadingRecommendations,
        bookingDate,
        setBookingDate,
        itemId,
        setItemId,
        selectedDates,
        setSelectedDates,
      }}
    >
      {children}
    </Context.Provider>
  );
}

export default Context;
