import React, { useContext } from "react";
import "./recommendations.scss";
import RecommendationCard from "./RecommendationCard/RecommendationCard";
import GlobalContext from "../../context/GlobalContext";
import Spinner from "../ui/Spinner/Spinner";

const Recommendations = () => {
  const { recommendations, title, loadingRecommendations } =
    useContext(GlobalContext);

  return (
    <section className="recommendations_container">
      <div className="recommendations_container_content">
        <h1 className="recommendations_container_header">{title}</h1>
        <div className="recommendations_cards_container">
          {loadingRecommendations ? (
            <Spinner />
          ) : (
            recommendations?.map(
              ({
                id,
                title,
                short_description,
                opinion,
                location,
                star,
                point,
                category,
                imageList,
                featureList,
              }) => {
                const url = imageList?.[0]?.url || "/images/image.png";

                return (
                  <RecommendationCard
                    key={id}
                    id={id}
                    category={category.title}
                    categoryName={title}
                    opinion={opinion}
                    location={location}
                    categoryDescription={short_description}
                    point={point}
                    image_url={url}
                    star={star}
                    featureList={featureList}
                  />
                );
              }
            )
          )}
        </div>
      </div>
    </section>
  );
};

export default Recommendations;
