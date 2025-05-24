import React, { useState, useEffect } from "react";
import { useParams, Outlet } from "react-router-dom";
import { getProductById } from "../../api/services/services";
import RecommendationDetailHeader from "../../components/RecommendationDetail/RecommendationDetailHeader/RecommendationDetailHeader";
import RecommendationDetailRules from "../../components/RecommendationDetail/RecommendationDetailRules/RecommendationDetailRules";
import Spinner from "../../components/ui/Spinner/Spinner";

/**
 * RecommendationDetails page component for displaying product details, header, and rules.
 *
 * @component
 * @returns {JSX.Element} The rendered recommendation details page.
 */
const RecommendationDetails = () => {
  const { productId } = useParams();
  const [item, setItem] = useState();
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    setLoading(true);
    const fetchProductById = async () => {
      const productsById = await getProductById(productId);
      setItem(productsById.data);
      setLoading(false);
    };
    fetchProductById();
  }, []);

  return (
    <>
      {item ? (
        <>
          <RecommendationDetailHeader item={item} />
          <Outlet />
          <RecommendationDetailRules item={item} />
        </>
      ) : (
        <Spinner />
      )}
    </>
  );
};

export default RecommendationDetails;
