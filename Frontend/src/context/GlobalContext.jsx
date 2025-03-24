import React, { useState, useEffect } from "react";
import {
  getCategories,
  getCities,
  getProducts,
  getProductsByCategoryId,
  getProductsByCityName,
} from "../api/services/services";

const Context = React.createContext({});

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
        setTitle(
          `Recomendaciones de ${productsByCategoryId.data[0].category.title}`
        );
        setLoadingRecommendations(false);
      };
      fetchProductsByCategoryId();
    }
  }, [categorySelected]);

  useEffect(() => {
    if (selectedOption.cityName) {
      setLoadingRecommendations(true);
      const fetchProductsByCityName = async () => {
        const productsByCityName = await getProductsByCityName(
          selectedOption.cityName
        );
        setRecommendations(productsByCityName.data);
        setTitle(`Recomendaciones de ${productsByCityName.data[0].city.name}`);
        setLoadingRecommendations(false);
      };

      fetchProductsByCityName();
    }
  }, [selectedOption.cityName]);

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
      }}
    >
      {children}
    </Context.Provider>
  );
}

export default Context;
