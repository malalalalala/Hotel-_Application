import React, { useContext, useEffect } from "react";
import Fluid from "../../components/ui/Fluid/Fluid";
import "./confirmed.scss";
import { faCheckSquare } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import Button from "../../components/ui/Button/Button";
import { Link } from "react-router-dom";
import { useLocation } from "react-router-dom";
import UserContext from "../../context/UserContext";

/**
 * Confirmed page component for displaying a confirmation message after an action.
 *
 * @component
 * @returns {JSX.Element} The rendered confirmed page.
 */
const Confirmed = () => {
  const location = useLocation();
  const successInfo = location.state;
  const { setFromBookingFlow } = useContext(UserContext);

  useEffect(() => {
    setFromBookingFlow(sessionStorage.setItem("bookingFlow", false));
  }, []);

  return (
    <Fluid bgColor={successInfo?.bgColor} color="dark">
      <div className="display">
        <div
          className={`confirmed_container confirmed_container_${successInfo?.bgColor}
          `}
        >
          <FontAwesomeIcon icon={faCheckSquare} size="4x" />
          {successInfo?.title ? <h1>{successInfo?.title}</h1> : ""}
          <h2>{successInfo?.text}</h2>
          <Link to="/">
            <Button variant="button1" type="submit">
              {successInfo?.buttonText}
            </Button>
          </Link>
        </div>
      </div>
    </Fluid>
  );
};

export default Confirmed;
