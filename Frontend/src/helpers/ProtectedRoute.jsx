import React, { useEffect, useState, useContext } from "react";
import { useNavigate } from "react-router-dom";
import UserContext from "../context/UserContext";

/**
 * ProtectedRoute component to restrict access based on user authentication and role.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {string} props.role - The required user role to access the route.
 * @param {string} props.from - The origin of the route (e.g., 'administration', 'reservation').
 * @param {React.ReactNode} props.children - The child components to render if access is granted.
 * @returns {JSX.Element} The rendered protected route or redirects as needed.
 */
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
        sessionStorage.setItem("globalAlertMessage", "crear un producto");
      }
      if (props.from === "reservation") {
        sessionStorage.setItem("loginAlertMessage", "realizar una reserva");
      }
      return navigate("/login");
    }
    if (userInfo.role !== props.role) {
      if (props.from === "reservation") {
        sessionStorage.setItem(
          "globalAlertMessage",
          "No tienes permisos para realizar una reserva."
        );
      }

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
