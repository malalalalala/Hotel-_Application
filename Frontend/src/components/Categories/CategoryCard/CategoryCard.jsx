import React, { useContext } from "react";
import "../categories.scss";
import GlobalContext from "../../../context/GlobalContext";

const CategoryCard = ({ id, category, quantity, url }) => {
  const { setCategorySelected } = useContext(GlobalContext);

  return (
    <div
      className="category_card_container"
      onClick={() => setCategorySelected(id)}
    >
      <div
        className="category_card_image"
        style={{ backgroundImage: `url(${url})` }}
      ></div>
      <div className="category_card_info_container">
        <h2 className="category_card_info_title">{category}</h2>
        <h4 className="category_card_info_length">
          {quantity} {category}
        </h4>
      </div>
    </div>
  );
};

export default CategoryCard;
