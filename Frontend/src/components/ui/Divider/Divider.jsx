import React from "react";
import "./divider.scss";

const Divider = ({ color = "main" }) => {
  return <div className={`divider_detail_${color}`} />;
};

export default Divider;
