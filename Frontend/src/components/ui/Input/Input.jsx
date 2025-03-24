import React from "react";
import "./input.scss";

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
