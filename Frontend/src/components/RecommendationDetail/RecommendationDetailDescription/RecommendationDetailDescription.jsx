import React from "react";
import "./recommendationDetailDescription.scss";
import Fluid from "../../../components/ui/Fluid/Fluid";

/**
 * RecommendationDetailDescription component for displaying the subtitle and long description of an item.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {Object} props.item - The item containing subtitle and long_description.
 * @returns {JSX.Element} The rendered recommendation detail description component.
 */
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
