import React, { useContext, useEffect } from "react";
import "./header.scss";
import Logo from "./Logo/Logo";
import Menu from "./Menu/Menu";
import UserContext from "../../context/UserContext";
import GlobalContext from "../../context/GlobalContext";
import getRoleStyle from "../../helpers/getRoleStyle";
import Admin from "./Admin/Admin";
import { roles } from "../../constants/roles";

/**
 * Header component for displaying the site header, logo, and user/menu controls.
 *
 * @component
 * @returns {JSX.Element} The rendered header component.
 */
const Header = () => {
  const { setLogged, setUserInfo, userInfo, userLogged, setFromBookingFlow } =
    useContext(UserContext);
  const { setItemId } = useContext(GlobalContext);
  useEffect(() => {
    setUserInfo({
      name: sessionStorage.getItem("name"),
      lastname: sessionStorage.getItem("lastname"),
      email: sessionStorage.getItem("email"),
      userId: sessionStorage.getItem("userId"),
      token: sessionStorage.getItem("token"),
      role: sessionStorage.getItem("role"),
    });
    setLogged(sessionStorage.getItem("logged"));
    setItemId(sessionStorage.getItem("itemId"));
    setFromBookingFlow(sessionStorage.getItem("bookingFlow"));
  }, [userLogged]);

  return (
    <div className={`header_container${getRoleStyle(userInfo.role)}`}>
      <div className="header_container_content">
        <Logo role={userInfo.role} />
        <div className="header_user_info">
          {userInfo.role === roles.ROLE_ADMIN && userLogged ? <Admin /> : ""}
          <Menu />
        </div>
      </div>
    </div>
  );
};

export default Header;
