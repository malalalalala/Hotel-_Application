import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import "../IconItem/iconItem.scss";

/**
 * IconItem component for displaying an icon and label.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {any} props.icon - Icon definition for FontAwesomeIcon.
 * @param {string} props.offer - The label to display next to the icon.
 * @returns {JSX.Element} The rendered IconItem component.
 */
const IconItem = ({ icon, offer }) => {
  return (
    <div className="icon_item_container">
      <FontAwesomeIcon icon={icon} className="full" />
      <h4 style={{ paddingLeft: "0.5rem" }}>{offer}</h4>
    </div>
  );
};

export default IconItem;
