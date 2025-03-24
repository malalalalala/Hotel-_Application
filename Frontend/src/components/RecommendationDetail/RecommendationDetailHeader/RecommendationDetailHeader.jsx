import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import "./recommendationDetailHeader.scss";
import Fluid from "../../../components/ui/Fluid/Fluid";
import { useNavigate } from "react-router-dom";
import { faChevronLeft } from "@fortawesome/free-solid-svg-icons";

const RecommendationDetailHeader = ({ item }) => {
  const navigate = useNavigate();

  return (
    <>
      <Fluid bgColor="dark">
        <div className="recommendation_heading">
          <div>
            <h4>{item?.category.title || ""}</h4>
            <h1>{item?.title || ""}</h1>
          </div>
          <div className="recommendation_back_home">
            <FontAwesomeIcon
              icon={faChevronLeft}
              size="2xl"
              onClick={() => navigate(-1)}
              cursor="pointer"
            />
          </div>
        </div>
      </Fluid>
    </>
  );
};

export default RecommendationDetailHeader;
