import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

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
