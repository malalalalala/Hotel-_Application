import React, { useContext } from "react";
import { capitalize, getInitials } from "../../../../utils/stringConvertions";
import "./hamburgerMenu.scss";
import BottomMenuHomeLogged from "./BottomMenu/BottomMenuHomeLogged";
import BottomMenuHome from "./BottomMenu/BottomMenuHome";
import BottomMenuLogin from "./BottomMenu/BottomMenuLogin";
import BottomMenuRegister from "./BottomMenu/BottomMenuRegister";
import SocialMedia from "../../../../shared-components/SocialMedia/SocialMedia";
import UserContext from "../../../../context/UserContext";
import { roles } from "../../../../constants/roles";

const HamburgerMenu = ({ logged, handleClick, pathname }) => {
  const { userInfo, logOut } = useContext(UserContext);

  const roleAdmin = userInfo.role === roles.ROLE_ADMIN;

  const BottomMenu = () => {
    if (pathname !== "/login" && pathname !== "/register" && logged) {
      return <BottomMenuHomeLogged logOut={logOut} roleAdmin={roleAdmin} />;
    }
    if (pathname !== "/login" && pathname !== "/register" && !logged) {
      return <BottomMenuHome />;
    }
    if (pathname === "/login" && !logged) {
      return <BottomMenuLogin />;
    }
    if (pathname === "/register" && !logged) {
      return <BottomMenuRegister />;
    }
  };

  return (
    <div className="hamburger_menu_container">
      <div className="hamburger_menu_top">
        <h3 className="hamburger_menu_close" onClick={handleClick}>
          X
        </h3>
        {logged ? (
          <div>
            <div className="hamburger_menu_icon">
              <h4 className="hamburger_menu_icon_text">
                {getInitials(userInfo.name, userInfo.lastname)}
              </h4>
            </div>
            <span className="hamburger_menu_greeting">Hola,</span>
            <span className="hamburger_menu_name">
              {`${capitalize(userInfo.name)} 
            ${capitalize(userInfo.lastname)}`}
            </span>
          </div>
        ) : (
          <h3 className="hamburger_menu_nologged_text">MENÚ</h3>
        )}
      </div>
      <div className="bottom_menu">
        {BottomMenu()}
        <div className="bottom_menu_social_media">
          <SocialMedia />
        </div>
      </div>
    </div>
  );
};

export default HamburgerMenu;
