import React from "react";
import Input from "../../ui/Input/Input";
import Select from "../../ui/Select/Select";
import TextArea from "../../ui/TextArea/TextArea";
import "./productData.scss";

/**
 * ProductData component for displaying and editing product information fields.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {Object} props.newProduct - The current product data.
 * @param {function} props.setNewProduct - Function to update the product data.
 * @param {function} props.handleValueChange - Function to handle input changes.
 * @param {Array<string>} props.categoryList - List of category options.
 * @param {Array<string>} props.cityList - List of city options.
 * @param {Array<Object>} props.categories - Full list of category objects.
 * @param {Array<Object>} props.cities - Full list of city objects.
 * @returns {JSX.Element} The rendered product data component.
 */
const ProductData = ({
  newProduct,
  setNewProduct,
  handleValueChange,
  categoryList,
  cityList,
  categories,
  cities,
}) => {
  return (
    <>
      <div className="product_info">
        <Input
          inputLabel="Nombre de la propiedad"
          inputType="text"
          inputName="title"
          id="title"
          placeholder="Hotel Hermitage"
          value={newProduct.title}
          onChange={handleValueChange}
        />
        <Select
          inputLabel="Categoría"
          placeholder="Hotel"
          options={categoryList}
          setNewProduct={setNewProduct}
          newProduct={newProduct}
          fullList={categories}
          selectType="category"
        />
      </div>
      <div className="product_info">
        <Input
          inputLabel="Descripción Ubicación"
          inputType="text"
          inputName="location"
          id="location"
          placeholder="Situado en pleno centro"
          value={newProduct.location}
          onChange={handleValueChange}
        />
        <Input
          inputLabel="Invitación principal para el huesped"
          inputType="text"
          inputName="subtitle"
          id="subtitle"
          placeholder="Alojate en el centro de la ciudad"
          value={newProduct.subtitle}
          onChange={handleValueChange}
        />
      </div>
      <div className="product_info">
        <Input
          inputLabel="Dirección"
          inputType="text"
          inputName="address"
          id="address"
          placeholder="Av. Colón 1643"
          value={newProduct.address}
          onChange={handleValueChange}
        />
        <Select
          inputLabel="Ciudad"
          placeholder="Dónde estás ubicado"
          options={cityList}
          setNewProduct={setNewProduct}
          newProduct={newProduct}
          selectType="city"
          fullList={cities}
        />
      </div>
      <div className="product_info">
        <Input
          inputLabel="Longitud"
          inputType="number"
          inputName="length"
          id="length"
          placeholder="Longitud"
          value={newProduct.length}
          onChange={handleValueChange}
        />
        <Input
          inputLabel="Latitud"
          inputType="number"
          inputName="latitude"
          id="latitude"
          placeholder="Latitud"
          value={newProduct.latitude}
          onChange={handleValueChange}
        />
      </div>
      <div className="product_info presentation">
        <Input
          inputLabel="Presentación"
          inputType="text"
          inputName="short_description"
          id="short_description"
          placeholder="Gran hotel en el centro de la ciudad"
          value={newProduct.short_description}
          onChange={handleValueChange}
        />
      </div>
      <div className="product_info description">
        <TextArea
          inputLabel="Descripción"
          inputName="long_description"
          id="long_description"
          placeholder="Está situado a solo unas calles de..., . En las inmediaciones también hay varios lugares de interés, como ... El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de ... El establecimiento sirve un desayuno variado de 07:00 a 10:30."
          model="description"
          value={newProduct.long_description}
          onChange={handleValueChange}
        />
      </div>
    </>
  );
};

export default ProductData;
