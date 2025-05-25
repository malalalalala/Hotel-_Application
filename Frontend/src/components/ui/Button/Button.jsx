import React from "react";
import "./button.scss";

/**
 * Button component for user interactions.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {string} [props.variant="button1"] - The CSS class variant for the button style.
 * @param {React.ReactNode} props.children - The content to display inside the button.
 * @param {function} props.onClick - Function to call when the button is clicked.
 * @param {boolean} props.disabled - Whether the button is disabled.
 * @param {string} props.type - The button type (e.g., "button", "submit", "reset").
 * @returns {JSX.Element} The rendered button component.
 */
const Button = ({ variant = "button1", children, onClick, disabled, type }) => {
  return (
    <button
      onClick={onClick}
      className={variant}
      disabled={disabled}
      type={type}
    >
      {children}
    </button>
  );
};

export default Button;
