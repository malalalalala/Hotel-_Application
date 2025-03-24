import React, { useEffect, useState, useContext } from "react";
import { useNavigate } from "react-router-dom";
import UserContext from "../context/UserContext";

const ProtectedRoute = (props) => {
  const navigate = useNavigate();

  const { userLogged, userInfo, setLogged, setFromBookingFlow } =
    useContext(UserContext);

  const checkUserToken = () => {
    setLogged(sessionStorage.getItem("logged"));
    setFromBookingFlow(sessionStorage.getItem("bookingFlow"));
    if (sessionStorage.getItem("logged")) {
      if (userInfo.role === props.role) {
        if (props.from === "administration") {
          return navigate("/administration");
        }
        if (
          props.from === "reservation" &&
          sessionStorage.getItem("bookingFlow") === "true"
        ) {
          return navigate("/reservation");
        } else {
          return navigate("/");
        }
      }
    }

    if (!sessionStorage.getItem("logged")) {
      setFromBookingFlow(sessionStorage.setItem("bookingFlow", true));

      if (props.from === "administration") {
        sessionStorage.setItem("alertmessage", "crear un producto");
      }
      if (props.from === "reservation") {
        sessionStorage.setItem("alertmessage", "realizar una reserva");
      }
      return navigate("/login");
    }
    if (userInfo.role !== props.role) {
      return navigate("/");
    }

    setLogged(true);
  };

  useEffect(() => {
    setLogged(sessionStorage.getItem("logged"));

    setTimeout(() => {
      checkUserToken();
    }, 1);
  }, [userLogged]);

  return <>{props.children}</>;
};
export default ProtectedRoute;
