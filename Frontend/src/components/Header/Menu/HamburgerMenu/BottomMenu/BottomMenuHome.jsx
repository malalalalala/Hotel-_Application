import { Link } from "react-router-dom";

import "../hamburgerMenu.scss";

const BottomMenuHome = () => {
  return (
    <>
      <Link to="/register" className="bottom_menu_text">
        Crear cuenta
      </Link>
      <hr className="bottom_menu_line"></hr>
      <Link to="/login" className="bottom_menu_text">
        Iniciar sesión
      </Link>
    </>
  );
};

export default BottomMenuHome;
