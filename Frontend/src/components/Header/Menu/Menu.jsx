import React, { useState, useContext } from "react";
import { Link, useLocation } from "react-router-dom";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faBars } from "@fortawesome/free-solid-svg-icons";
import "./menu.scss";
import User from "../User/User";
import HamburgerMenu from "./HamburgerMenu/HamburgerMenu";
import Button from "../../ui/Button/Button";
import UserContext from "../../../context/UserContext";

const Menu = () => {
  const { userLogged } = useContext(UserContext);
  const [isNavExpanded, setIsNavExpanded] = useState(false);
  const { pathname } = useLocation();

  const handleClick = () => setIsNavExpanded((prevState) => !prevState);
  return (
    <>
      {/* menu inicio de sesión para desktop y tablet */}

      <div className="menu_container_login">
        {!userLogged && pathname !== "/register" ? (
          <Link to="/register">
            <Button>Crear Cuenta</Button>
          </Link>
        ) : null}
        {!userLogged && pathname !== "/login" ? (
          <Link to="/login">
            <Button>Iniciar Sesión</Button>
          </Link>
        ) : null}
        {userLogged ? <User logged={userLogged} /> : null}
      </div>

      {/* menu hamburguesa solo mobile*/}
      {!isNavExpanded ? (
        <button className="menu_container_hamburger" onClick={handleClick}>
          <FontAwesomeIcon
            className="menu_hamburger_icon"
            icon={faBars}
            size="2x"
          />
        </button>
      ) : (
        ""
      )}
      {isNavExpanded ? (
        <HamburgerMenu
          logged={userLogged}
          handleClick={handleClick}
          pathname={pathname}
        />
      ) : (
        ""
      )}
    </>
  );
};

export default Menu;
