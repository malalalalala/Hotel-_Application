import React from "react";
import "./spinner.scss";
import Fluid from "../Fluid/Fluid";

const Spinner = () => {
  return (
    <Fluid bgColor="transparent">
      <div className="spinner_container">
        <div className="spinner" />
        <h4 className="spinner_text">loading</h4>
      </div>
    </Fluid>
  );
};

export default Spinner;
