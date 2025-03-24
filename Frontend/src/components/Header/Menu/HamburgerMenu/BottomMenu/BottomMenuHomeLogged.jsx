import "../hamburgerMenu.scss";
import { Link } from "react-router-dom";

const BottomMenuHomeLogged = (props) => {
  const { logOut, roleAdmin } = props;

  return (
    <>
      {roleAdmin ? (
        <Link to="/administration" className="bottom_menu_text">
          Administración
        </Link>
      ) : (
        ""
      )}
      <p className="bottom_menu_logged_text" onClick={logOut}>
        ¿Deseas{" "}
        <span className="bottom_menu_logged_text_logout">cerrar sesión</span>?
      </p>
      <hr className="bottom_menu_line_logged"></hr>
    </>
  );
};

export default BottomMenuHomeLogged;
