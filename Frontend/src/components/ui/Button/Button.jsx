import React from "react";
import "./button.scss";

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
