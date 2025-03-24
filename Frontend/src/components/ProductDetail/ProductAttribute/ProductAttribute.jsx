import React, { useState, useEffect } from "react";
import "./productAttribute.scss";
import AddAttribute from "./AddAttribute/AddAttribute";
import { getFeatures } from "../../../api/services/services";

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
        <h2>Agregar atributos</h2>
        <div className="product_container_atributes_add_icons">
          {componentAttributes.map(({ iconName, iconValue, iconId }, index) => (
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
