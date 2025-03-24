import React from "react";
import "./recommendationDetailRules.scss";
import Fluid from "../../../components/ui/Fluid/Fluid";
import Divider from "../../ui/Divider/Divider";

const RecommendationDetailRules = ({ item }) => {
  return (
    <>
      <Fluid color="dark">
        <h2 className="title" style={{ padding: "1.5rem 0 0 0" }}>
          Qué tenés que saber
        </h2>
      </Fluid>
      <Divider />
      <Fluid color="dark">
        <div className="knowing_row">
          <div className="knowing_row_s">
            <h2 style={{ padding: "1.5rem 0" }}>Normas de la casa</h2>
            {item?.rules?.split("*").map((i, index) => (
              <p key={index} style={{ padding: "1rem 0" }}>
                {i}
              </p>
            ))}
          </div>
          <div className="knowing_row_s">
            <h2 style={{ padding: "1.5rem 0" }}>Salud y seguridad</h2>
            {item?.safety_security?.split("*").map((i, index) => (
              <p key={index} style={{ padding: "1rem 0" }}>
                {i}
              </p>
            ))}
          </div>
          <div className="knowing_row_s">
            <h2 style={{ padding: "1.5rem 0" }}>Política de cancelación</h2>
            {item?.policy?.split("*").map((i, index) => (
              <p key={index} style={{ padding: "1rem 0", maxWidth: "95%" }}>
                {i}
              </p>
            ))}
          </div>
          <div className="knowing_row_s"></div>
        </div>
      </Fluid>
    </>
  );
};

export default RecommendationDetailRules;
