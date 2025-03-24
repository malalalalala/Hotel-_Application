import React from "react";
import "./textArea.scss";

const TextArea = ({
  inputLabel,
  htmlForInput,
  inputName,
  inputId,
  placeholder,
  inputValue,
  onChange,
  variant = "bgColor",
  model = "description",
}) => {
  return (
    <div className={`textArea_container ${model}`}>
      <label htmlFor={htmlForInput}>{inputLabel}</label>
      <textarea
        name={inputName}
        id={inputId}
        className={`textArea ${variant}`}
        placeholder={placeholder}
        value={inputValue}
        onChange={onChange}
      />
    </div>
  );
};

export default TextArea;
