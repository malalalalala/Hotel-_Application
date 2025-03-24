import React from "react";
import "./recommendationDetailDescription.scss";
import Fluid from "../../../components/ui/Fluid/Fluid";

const RecommendationDetailDescription = ({ item }) => {
  return (
    <>
      <Fluid color="dark">
        <h1 className="detail_description_title title">
          {item?.subtitle || ""}
        </h1>
        <p className="detail_description_body">
          {item?.long_description || ""}
        </p>
      </Fluid>
    </>
  );
};

export default RecommendationDetailDescription;
