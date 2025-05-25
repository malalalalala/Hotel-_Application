import React from "react";
import "./input.scss";

/**
 * Input component for user text entry.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {string} props.inputLabel - The label for the input field.
 * @param {string} props.htmlForInput - The htmlFor attribute for the label.
 * @param {string} props.inputType - The type of the input (e.g., "text", "number").
 * @param {string} props.inputName - The name attribute for the input.
 * @param {string} props.inputId - The id attribute for the input.
 * @param {string} props.placeholder - Placeholder text for the input.
 * @param {string|number} props.inputValue - The value of the input.
 * @param {string} [props.variant="bgColor"] - The style variant for the input.
 * @param {function} props.onChange - Function to call on input change.
 * @param {boolean} [props.disabled=false] - Whether the input is disabled.
 * @param {string} [props.autoComplete="off"] - The autocomplete attribute for the input.
 * @param {string|number} props.step - The step attribute for number inputs.
 * @returns {JSX.Element} The rendered input component.
 */
const Input = ({
  inputLabel,
  htmlForInput,
  inputType,
  inputName,
  inputId,
  placeholder,
  inputValue,
  variant = "bgColor",
  onChange,
  disabled = false,
  autoComplete = "off",
  step,
}) => {
  return (
    <div className="input_container">
      <label htmlFor={htmlForInput}>{inputLabel}</label>
      <input
        type={inputType}
        name={inputName}
        id={inputId}
        // className={`input ${variant}`}
        className={disabled ? `input ${variant} disabled` : `input ${variant}`}
        placeholder={placeholder}
        value={inputValue}
        onChange={onChange}
        disabled={disabled}
        autoComplete={autoComplete}
        step="any"
      />
    </div>
  );
};

export default Input;
