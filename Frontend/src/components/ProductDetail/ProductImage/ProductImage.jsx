import React, { useState } from "react";
import "./productImage.scss";
import AddImage from "./AddImage/AddImage";

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
