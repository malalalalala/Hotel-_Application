import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import "../IconItem/iconItem.scss";

const IconItem = ({ icon, offer }) => {
  return (
    <div className="icon_item_container">
      <FontAwesomeIcon icon={icon} className="full" />
      <h4 style={{ paddingLeft: "0.5rem" }}>{offer}</h4>
    </div>
  );
};

export default IconItem;
