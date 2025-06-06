import React from "react";
import TextArea from "../../ui/TextArea/TextArea";
import "./productPolicy.scss";

/**
 * ProductPolicy component for displaying and editing product policies (house rules, safety, cancellation).
 *
 * @component
 * @param {Object} props - Component props.
 * @param {Object} props.newProduct - The current product data.
 * @param {function} props.setNewProduct - Function to update the product data.
 * @param {function} props.handleValueChange - Function to handle input changes.
 * @returns {JSX.Element} The rendered product policy component.
 */
const ProductPolicy = ({ newProduct, setNewProduct, handleValueChange }) => {
  return (
    <>
      <div className="product_container_policy">
        <h2>Políticas del producto</h2>
        <div className="product_container_policies">
          <div className="product_policy">
            <h4 className="product_policy_title">Normas de la casa</h4>
            <TextArea
              inputLabel="Descripción"
              inputName="rules"
              id="rules"
              placeholder="Escribir aquí"
              model="policy"
              value={newProduct.propertyName}
              onChange={handleValueChange}
            />
          </div>
          <div className="product_policy">
            <h4 className="product_policy_title">Salud y seguridad</h4>
            <TextArea
              inputLabel="Descripción"
              inputName="safety_security"
              id="safety_security"
              placeholder="Escribir aquí"
              model="policy"
              value={newProduct.propertyName}
              onChange={handleValueChange}
            />
          </div>
          <div className="product_policy">
            <h4 className="product_policy_title">Política de cancelación</h4>
            <TextArea
              inputLabel="Descripción"
              inputName="policy"
              id="policy"
              placeholder="Escribir aquí"
              model="policy"
              value={newProduct.propertyName}
              onChange={handleValueChange}
            />
          </div>
        </div>
      </div>
    </>
  );
};

export default ProductPolicy;
