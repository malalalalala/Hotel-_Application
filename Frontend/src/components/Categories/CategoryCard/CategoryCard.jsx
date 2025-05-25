import React, { useContext } from "react";
import "../categories.scss";
import GlobalContext from "../../../context/GlobalContext";

/**
 * CategoryCard component for displaying a category with image and quantity.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {string|number} props.id - The ID of the category.
 * @param {string} props.category - The name of the category.
 * @param {number} props.quantity - The quantity of items in the category.
 * @param {string} props.url - The image URL for the category.
 * @returns {JSX.Element} The rendered category card component.
 */
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
