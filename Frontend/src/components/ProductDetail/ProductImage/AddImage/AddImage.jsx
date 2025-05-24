import React, { useState } from "react";
import "../productImage.scss";
import Input from "../../../ui/Input/Input";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faSquarePlus,
  faSquareXmark,
  faWarning,
} from "@fortawesome/free-solid-svg-icons";

/**
 * AddImage component for adding or removing images to a product.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {function} props.handleImages - Function to handle adding/removing images.
 * @param {boolean} [props.componentImage=false] - Whether the image is part of the component list.
 * @param {number} props.limit - The current number of images.
 * @param {function} props.onChange - Function to handle input changes.
 * @param {string} props.inputValue - The current value of the input field.
 * @param {Array<string>} [props.componentImages] - The current list of images.
 * @returns {JSX.Element} The rendered add image component.
 */
const AddImage = ({
  handleImages,
  componentImage = false,
  limit,
  onChange,
  inputValue,
  componentImages,
}) => {
  return (
    <div className="product_container_images_add_icons">
      <div className="product_add_images">
        <Input
          inputLabel=""
          inputType="text"
          inputName="propertyAddImages"
          id="propertyAddImages"
          placeholder={
            limit === 5
              ? "Llegaste al límite de fotos solicitadas"
              : "Insertar https://"
          }
          inputValue={inputValue}
          disabled={limit === 5 || componentImages}
          onChange={onChange}
        />
        <div className="product_add_images_icon">
          <FontAwesomeIcon
            icon={componentImage ? faSquareXmark : faSquarePlus}
            onClick={handleImages}
            cursor="pointer"
            className={
              componentImage
                ? "image_create_icon delete"
                : limit === 5
                ? "image_create_icon limit"
                : "image_create_icon success"
            }
          />
        </div>
      </div>
      <div className="product_fail_message_container">
        {limit === 5 && (
          <>
            <FontAwesomeIcon icon={faWarning} />
            <h4>Llegaste al límite de fotos solicitadas.</h4>
          </>
        )}
        {!inputValue && limit < 5 && (
          <>
            <FontAwesomeIcon icon={faWarning} />
            <h4>Tenés que ingresar 5 imágenes</h4>
          </>
        )}
      </div>
    </div>
  );
};

export default AddImage;
