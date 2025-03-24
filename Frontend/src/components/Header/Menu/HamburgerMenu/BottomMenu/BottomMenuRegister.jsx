import { Link } from "react-router-dom";
import "../hamburgerMenu.scss";

const BottomMenuRegister = () => {
  return (
    <>
      <Link to="/login" className="bottom_menu_text">
        Iniciar sesión
      </Link>
    </>
  );
};

export default BottomMenuRegister;
