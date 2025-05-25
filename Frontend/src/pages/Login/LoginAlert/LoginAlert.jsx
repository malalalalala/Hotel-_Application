import React, { useState, useEffect } from "react";
import "./loginAlert.scss";
import { faCircleExclamation } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

const LoginAlert = () => {
  const [alertMessage, setAlertMessage] = useState("");

  useEffect(() => {
    setAlertMessage(sessionStorage.getItem("loginAlertMessage"));
  }, []);

  return (
    <div className="loginAlert_container">
      <FontAwesomeIcon icon={faCircleExclamation} size="2xl" />
      <p>{`Para ${alertMessage} necesitas estar logueado `}</p>
    </div>
  );
};

export default LoginAlert;
