import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

/**
 * ToggleIcon component for displaying a clickable icon.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {any} props.icon - Icon definition for FontAwesomeIcon.
 * @param {string} props.size - The size of the icon.
 * @param {string} props.color - The color of the icon.
 * @param {function} props.handleClick - Function to call when the icon is clicked.
 * @returns {JSX.Element} The rendered toggle icon component.
 */
const ToggleIcon = ({ icon, size, color, handleClick }) => {
  return (
    <FontAwesomeIcon
      icon={icon}
      onClick={handleClick}
      size={size}
      color={color}
      style={{ cursor: "pointer" }}
    ></FontAwesomeIcon>
  );
};

export default ToggleIcon;
