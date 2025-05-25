import React, { useState } from "react";
import "./productImage.scss";
import AddImage from "./AddImage/AddImage";

/**
 * ProductImage component for managing and displaying product images.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {Array<string>} props.componentImages - The list of current image URLs.
 * @param {function} props.setComponentImages - Function to update the images list.
 * @returns {JSX.Element} The rendered product image component.
 */
const ProductImage = ({ componentImages, setComponentImages }) => {
  const [searchImage, setSearchImage] = useState("");

  function handleChange(event) {
    const { value } = event.target;
    setSearchImage(value);
  }

  const addImages = () => {
    if (componentImages.length < 5 && searchImage.length > 0) {
      setComponentImages((images) => images.concat(searchImage));
    }
    setSearchImage("");
  };

  const deleteImage = (index) =>
    setComponentImages((images) => images.filter((_, ind) => ind !== index));

  return (
    <div className="product_container_images">
      <h2>Cargar imágenes</h2>
      {componentImages.map((elem, index) => (
        <AddImage
          key={index}
          inputValue={elem}
          componentImage
          handleImages={() => deleteImage(index)}
          componentImages={componentImages}
        />
      ))}
      <AddImage
        handleImages={addImages}
        limit={componentImages.length}
        onChange={handleChange}
        inputValue={searchImage}
      />
    </div>
  );
};

export default ProductImage;
