import React from "react";
import "./fluid.scss";

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
