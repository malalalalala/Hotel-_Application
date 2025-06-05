import React, { useState, useEffect } from "react";
import "./productAttribute.scss";
import AddAttribute from "./AddAttribute/AddAttribute";
import { getFeatures } from "../../../api/services/services";

/**
 * ProductAttribute component for managing and displaying accommodation amenities.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {Array<Object>} props.componentAttributes - The list of current attributes.
 * @param {function} props.setComponentAttributes - Function to update the attributes list.
 * @returns {JSX.Element} The rendered product attribute component.
 */
const ProductAttribute = ({ componentAttributes, setComponentAttributes }) => {
  const [features, setFeatures] = useState([]);

  useEffect(() => {
    const fetchFeatures = async () => {
      const features = await getFeatures();
      setFeatures(features.data);
    };
    fetchFeatures();
  }, []);

  const addAttribute = (attribute) => {
    if (componentAttributes.length < 8 && attribute.iconValue) {
      setComponentAttributes([...componentAttributes, attribute]);
    }
  };

  console.log("componentAttributes", componentAttributes);

  const deleteImage = (index) =>
    setComponentAttributes((attributes) =>
      attributes.filter((_, ind) => ind !== index)
    );

  return (
    <>
      <div className="product_container_atributes">
        <h2>Agregar amenidades del alojamiento</h2>
        <div className="product_container_atributes_add_icons">
          {componentAttributes?.map(({ iconName, iconValue, iconId }, index) => (
            <AddAttribute
              key={index}
              values={{ iconName, iconValue, iconId }}
              componentAttribute
              handleAttributes={() => deleteImage(index)}
              componentAttributes={componentAttributes}
            />
          ))}
          <AddAttribute
            handleAttributes={addAttribute}
            limit={componentAttributes.length}
            features={features}
          />
        </div>
      </div>
    </>
  );
};

export default ProductAttribute;
