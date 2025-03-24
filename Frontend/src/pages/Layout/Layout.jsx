import React from "react";
import { useState, useEffect } from "react";
import { Outlet } from "react-router-dom";
import Header from "../../components/Header/Header";
import Footer from "../../components/Footer/Footer";

const Layout = () => {

  return (
    <>
      <Header  />
      {/* An <Outlet> renders whatever child route is currently active in App.js */}
      <Outlet />
      <Footer />
    </>
  );
};

export default Layout;
