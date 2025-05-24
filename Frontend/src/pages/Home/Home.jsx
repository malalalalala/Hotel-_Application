import React, { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import Search from "../../components/Search/Search";
import Categories from "../../components/Categories/Categories";
import Recommendations from "../../components/Recommendations/Recommendations";

/**
 * Home page component displaying search, categories, and recommendations.
 *
 * @component
 * @returns {JSX.Element} The rendered home page.
 */
const Home = () => {
  const navigate = useNavigate();

  useEffect(() => {
    if (!localStorage.getItem("name")) {
      navigate("/");
    }
  }, []);

  return (
    <>
      <Search />
      <Categories />
      <Recommendations />
    </>
  );
};

export default Home;
