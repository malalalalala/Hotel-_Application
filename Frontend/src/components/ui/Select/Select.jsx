import React, { useState } from "react";
import "./select.scss";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faChevronUp } from "@fortawesome/free-solid-svg-icons";
import Divider from "../Divider/Divider";

/**
 * Select component for choosing an option from a dropdown list.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {string} props.inputLabel - The label for the select field.
 * @param {string} props.placeholder - Placeholder text for the select.
 * @param {Array<string>} props.options - The list of options to display.
 * @param {function} props.setNewProduct - Function to update the new product state.
 * @param {Object} props.newProduct - The current new product state.
 * @param {string} props.selectType - The type of select (e.g., "city", "category").
 * @param {Array<Object>} props.fullList - The full list of items for lookup.
 * @returns {JSX.Element} The rendered select component.
 */
const Select = ({
  inputLabel,
  placeholder,
  options,
  setNewProduct,
  newProduct,
  selectType,
  fullList,
}) => {
  const [selectedOption, setSelectedOption] = useState(null);
  const [isOpen, setIsOpen] = useState(false);

  const toggling = () => setIsOpen((prevState) => !prevState);

  const handleClick = (option, selectType, fullList) => () => {
    setSelectedOption(option);
    setIsOpen(false);
    if (selectType === "city") {
      setNewProduct({
        ...newProduct,
        city: { id: fullList.find((item) => item.name === option).id },
      });
    }
    if (selectType === "category") {
      setNewProduct({
        ...newProduct,
        category: { id: fullList.find((item) => item.title === option).id },
      });
    }
  };

  return (
    <div className="select_container">
      <label>{inputLabel}</label>
      <div className="">
        <div className="">
          <div
            onClick={toggling}
            className={`input ${selectedOption ? "selected" : ""}`}
          >
            {selectedOption || placeholder}
            <div className={isOpen ? "chevron" : "chevron rotate"}>
              <FontAwesomeIcon icon={faChevronUp} />
            </div>
          </div>

          {isOpen && (
            <div className="list_select_container">
              <ul className="list_select_ul">
                {options.map((option) => (
                  <li
                    value={option}
                    key={option}
                    className="list_select_li"
                    onClick={handleClick(option, selectType, fullList)}
                  >
                    <div className="list_content">
                      <div className="text_container">
                        <div className="option_name text2">{option}</div>
                      </div>
                      {options[options.length - 1] === option ? (
                        ""
                      ) : (
                        <Divider />
                      )}
                    </div>
                  </li>
                ))}
              </ul>
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default Select;
