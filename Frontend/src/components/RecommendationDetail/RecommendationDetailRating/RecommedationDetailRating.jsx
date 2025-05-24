import React from "react";
import "./recommendationDetailRating.scss";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faLocationDot, faStar } from "@fortawesome/free-solid-svg-icons";
import Fluid from "../../../components/ui/Fluid/Fluid";

/**
 * RecommedationDetailRating component for displaying the rating, location, and points of an item.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {Object} props.item - The item containing city, location, opinion, star, and point.
 * @returns {JSX.Element} The rendered recommendation detail rating component.
 */
const RecommedationDetailRating = ({ item }) => {
  return (
    <>
      <Fluid bgColor="white" color="dark">
        {/* valuation container */}
        <div className="recommendation_detail_location_container">
          {/* location */}
          <div className="recommendation_detail_location">
            <div>
              <FontAwesomeIcon icon={faLocationDot} size="sm" />
            </div>
            <div className="recommendation_detail_location_city">
              <h5>
                {item?.city.name || ""}, {item?.city.country || ""}
              </h5>
              <h5 className="meters">{item?.location || ""}</h5>
            </div>
          </div>
          {/* box rating */}
          {item?.opinion ? (
            <div className="recommendation_detail_container_points">
              <div>
                <h4>{item?.opinion || ""}</h4>
                {[...Array(item.star)].map((s, index) => {
                  return (
                    <FontAwesomeIcon
                      key={index}
                      icon={faStar}
                      color="green"
                      size="xs"
                      className="full"
                    />
                  );
                })}
                {[...Array(5 - item.star)].map((s, index) => {
                  return (
                    <FontAwesomeIcon
                      key={index}
                      icon={faStar}
                      color="grey"
                      size="xs"
                      className="full_ligth"
                    />
                  );
                })}
              </div>
              <div className="recommendation_detail_point">
                {item?.point || ""}
              </div>
            </div>
          ) : (
            <div className="recommendation_detail_container_no_points">
              <FontAwesomeIcon
                key={0}
                icon={faStar}
                size="xs"
                className="star"
              />
              <h5 className="recommendation_new_text">Nuevo</h5>
            </div>
          )}
        </div>
      </Fluid>
    </>
  );
};

export default RecommedationDetailRating;
