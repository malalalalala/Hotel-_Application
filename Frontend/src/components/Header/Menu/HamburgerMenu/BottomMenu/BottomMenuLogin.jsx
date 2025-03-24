import { Link } from "react-router-dom";
import "../hamburgerMenu.scss";

const BottomMenuLogin = () => {
  return (
    <>
      <Link to="/register" className="bottom_menu_text">
        Crear Cuenta
      </Link>
    </>
  );
};

export default BottomMenuLogin;
