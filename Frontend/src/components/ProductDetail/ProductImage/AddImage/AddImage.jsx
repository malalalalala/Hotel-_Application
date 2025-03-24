import React, { useState } from "react";
import "../productImage.scss";
import Input from "../../../ui/Input/Input";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faSquarePlus,
  faSquareXmark,
  faWarning,
} from "@fortawesome/free-solid-svg-icons";

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
