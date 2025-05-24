import React from "react";
import "./textArea.scss";

/**
 * TextArea component for multi-line text input.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {string} props.inputLabel - The label for the textarea field.
 * @param {string} props.htmlForInput - The htmlFor attribute for the label.
 * @param {string} props.inputName - The name attribute for the textarea.
 * @param {string} props.inputId - The id attribute for the textarea.
 * @param {string} props.placeholder - Placeholder text for the textarea.
 * @param {string|number} props.inputValue - The value of the textarea.
 * @param {function} props.onChange - Function to call on textarea change.
 * @param {string} [props.variant="bgColor"] - The style variant for the textarea.
 * @param {string} [props.model="description"] - The model variant for the textarea container.
 * @returns {JSX.Element} The rendered textarea component.
 */
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
