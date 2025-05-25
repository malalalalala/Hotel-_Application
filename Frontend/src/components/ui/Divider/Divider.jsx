import React from "react";
import "./divider.scss";

/**
 * Divider component for visual separation.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {string} [props.color="main"] - The color variant for the divider.
 * @returns {JSX.Element} The rendered divider component.
 */
const Divider = ({ color = "main" }) => {
  return <div className={`divider_detail_${color}`} />;
};

export default Divider;
