import React from "react";
import Input from "../../ui/Input/Input";
import Select from "../../ui/Select/Select";
import TextArea from "../../ui/TextArea/TextArea";
import "./productData.scss";

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
          inputLabel="Ubicación"
          inputType="text"
          inputName="location"
          id="location"
          placeholder="Situado en pleno centro"
          value={newProduct.location}
          onChange={handleValueChange}
        />
        <Input
          inputLabel="Invitación principal para el anfitrión"
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
          placeholder="Escribir aquí una breve presentación"
          value={newProduct.short_description}
          onChange={handleValueChange}
        />
      </div>
      <div className="product_info description">
        <TextArea
          inputLabel="Descripción"
          inputName="long_description"
          id="long_description"
          placeholder="Escribir aquí"
          model="description"
          value={newProduct.long_description}
          onChange={handleValueChange}
        />
      </div>
    </>
  );
};

export default ProductData;
