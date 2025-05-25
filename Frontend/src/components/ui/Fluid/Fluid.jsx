import React from "react";
import "./fluid.scss";

/**
 * Fluid container component for layout sections.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {string} [props.bgColor="bgColor"] - Background color variant.
 * @param {string} [props.color="bgColor"] - Content color variant.
 * @param {number} [props.padding=0] - Padding for the content.
 * @param {React.ReactNode} props.children - Content to render inside the container.
 * @param {string} props.model - Optional model variant for the container.
 * @returns {JSX.Element} The rendered fluid container.
 */
const Fluid = ({
  bgColor = "bgColor",
  color = "bgColor",
  padding = 0,
  children,
  model,
}) => {
  return (
    <div
      className={
        model
          ? `fluid_container_${bgColor}_${model}`
          : `fluid_container_${bgColor}`
      }
    >
      <div className={`fluid_container_content_${color} ${padding}`}>
        {children}
      </div>
    </div>
  );
};

export default Fluid;
