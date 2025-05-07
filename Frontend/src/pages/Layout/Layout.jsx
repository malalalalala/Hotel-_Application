import React, { useState, useEffect } from "react";
import { Outlet } from "react-router-dom";
import Header from "../../components/Header/Header";
import Footer from "../../components/Footer/Footer";
import { useLocation } from "react-router-dom";
import AlertModal from "../../components/AlertModal/AlertModal";

const Layout = () => {
  const [alertMessage, setAlertMessage] = useState("");
  const location = useLocation();

  useEffect(() => {
    const message = sessionStorage.getItem("alertmessage");
    if (message) {
      setAlertMessage(message);
      sessionStorage.removeItem("alertmessage");
    }
  }, [location.pathname]);

  return (
    <>
      <Header />
      <Outlet />
      <Footer />
      <AlertModal message={alertMessage} onClose={() => setAlertMessage("")} />
    </>
  );
};

export default Layout;
