import React from "react";
import "./categories.scss";
import CategoryCard from "./CategoryCard/CategoryCard";
import { useContext } from "react";
import GlobalContext from "../../context/GlobalContext";
import Spinner from "../ui/Spinner/Spinner";
import Fluid from "../ui/Fluid/Fluid";

const Categories = () => {
  const { categories, loadingCategories } = useContext(GlobalContext);

  const getRandomInt = (min, max) => {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1) + min);
  };

  return (
    <Fluid bgColor="bgColor" color="dark" padding="padding_container">
      <h1 className="categories_container_header">
        Buscar por tipo de alojamiento
      </h1>
      <div className="category_cards_container">
        {loadingCategories ? (
          <Spinner />
        ) : (
          categories?.map((c) => {
            return (
              <CategoryCard
                key={c.id}
                id={c.id}
                category={c.title}
                quantity={c.productsQuantity}
                url={c.image_url}
              />
            );
          })
        )}
      </div>
    </Fluid>
  );
};

export default Categories;
