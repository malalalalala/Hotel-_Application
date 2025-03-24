import React, { useState, useEffect, useRef } from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faSquarePlus,
  faSquareXmark,
  faWarning,
  faCircleExclamation,
} from "@fortawesome/free-solid-svg-icons";
import Input from "../../../ui/Input/Input";
import AutoComplete from "../../../ui/AutoComplete/AutoComplete";
import "../productAttribute.scss";
import useOutsideClick from "../../../../hooks/useOutsideClick";
import _ from "lodash";

const AddAttribute = ({
  handleAttributes,
  componentAttribute = false,
  limit,
  values,
  componentAttributes,
  features,
}) => {
  const [documentRef, isVisible, setIsVisible] = useOutsideClick();
  const [suggestions, setSuggestions] = useState([]);
  const [selectedIcon, setSelectedIcon] = useState("");
  const [searchTerm, setSearchTerm] = useState("");
  const [selectedFeatureId, setSelectedFeatureId] = useState([]);
  const [selectedFeatureName, setSelectedFeatureName] = useState([]);
  const ref = useRef();

  useEffect(() => {
    if (!features) return;
    const result = features.filter((f) => {
      return f.name.toLowerCase().includes(searchTerm.toLowerCase());
    });
    setSuggestions(result);
    if (result.length > 0) {
      setIsVisible(true);
    } else {
      setIsVisible(false);
    }
  }, [searchTerm]);

  function handleSearch(event) {
    const { value } = event.target;
    setSearchTerm(value);
  }

  function handleSuggestionClick(iconValue, iconId, iconName) {
    console.log("iconValue", iconValue);
    setSelectedIcon(iconValue);
    setSelectedFeatureId(iconId);
    setSelectedFeatureName(iconName);
    setSearchTerm(iconName);
    setIsVisible(false);
  }

  return (
    <>
      <div className="product_add_icons">
        <div className="product_add_component">
          <div className="product_add_icons_inputs">
            <div className="product_add_icons_input_autocomplete">
              <Input
                inputLabel="Nombre"
                inputType="text"
                inputName="propertyAutocomplete"
                id="propertyAutocomplete"
                placeholder={
                  limit === 8
                    ? "Llegaste al límite de features posibles de ingresar"
                    : "Agrega un atributo válido"
                }
                inputValue={values ? values.iconName : searchTerm}
                disabled={limit === 8 || componentAttributes}
                onChange={handleSearch}
                autoComplete="off"
              />
              <div ref={documentRef}>
                {isVisible && (
                  <AutoComplete
                    isVisible={isVisible}
                    suggestions={suggestions}
                    handleSuggestionClick={handleSuggestionClick}
                  />
                )}
              </div>
            </div>
            <Input
              inputLabel="Ícono"
              inputType="text"
              inputName="propertyName"
              id="propertyName"
              placeholder={
                limit === 8 ? "Llegaste al límite de íconos" : "fa-Wifi"
              }
              inputValue={values ? values.iconValue : selectedIcon}
              autoComplete="off"
              disabled
            />
          </div>
          <div className="product_add_icons_icon">
            <FontAwesomeIcon
              icon={componentAttribute ? faSquareXmark : faSquarePlus}
              onClick={() => {
                handleAttributes({
                  iconValue: selectedIcon,
                  iconId: selectedFeatureId,
                  iconName: selectedFeatureName,
                });
                setSearchTerm("");
                setSelectedIcon("");
              }}
              cursor="pointer"
              className={
                componentAttribute
                  ? "product_icon delete"
                  : limit === 8
                  ? "product_icon limit"
                  : "product_icon success"
              }
            />
          </div>
        </div>
      </div>
      <div className="product_fail_message_attribute_container">
        {limit === 8 && (
          <>
            <FontAwesomeIcon icon={faCircleExclamation} />
            <h4>Llegaste al límite de atributos posibles de agregar.</h4>
          </>
        )}
      </div>
    </>
  );
};

export default AddAttribute;
