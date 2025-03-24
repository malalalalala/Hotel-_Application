import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { getProductById } from "../../api/services/services";
import Galery from "../../components/Galery/Galery";
import Fluid from "../../components/ui/Fluid/Fluid";
import Slider from "../../components/Slider/Slider";
import RecommendationDetailRating from "../../components/RecommendationDetail/RecommendationDetailRating/RecommedationDetailRating";
import RecommendationDetailDescription from "../../components/RecommendationDetail/RecommendationDetailDescription/RecommendationDetailDescription";
import RecommendationDetailOffers from "../../components/RecommendationDetail/RecommendationDetailOffers/RecommendationDetailOffers";
import RecommendationDetailCalendar from "../../components/RecommendationDetail/RecommendationDetailCalendar/RecommendationDetailCalendar";
import RecommendationDetailMap from "../../components/RecommendationDetail/RecommendationDetailMap/RecommendationDetailMap";
import Spinner from "../../components/ui/Spinner/Spinner";

const RecommendationContent = () => {
  const { productId } = useParams();
  const [item, setItem] = useState();

  useEffect(() => {
    const fetchProductById = async () => {
      const productsById = await getProductById(productId);
      setItem(productsById.data);
    };
    fetchProductById();
  }, []);

  return (
    <>
      {item ? (
        <>
          <RecommendationDetailRating item={item} />
          <Fluid>
            <Galery item={item} />
          </Fluid>
          <Slider item={item} />
          <RecommendationDetailDescription item={item} />
          <RecommendationDetailOffers item={item} />
          <RecommendationDetailCalendar item={item} />
          <RecommendationDetailMap item={item} />
        </>
      ) : (
        <Spinner />
      )}
    </>
  );
};

export default RecommendationContent;
