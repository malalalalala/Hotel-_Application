import React, { useContext } from "react";
import "./user.scss";
import { capitalize, getInitials } from "../../../utils/stringConvertions";
import UserContext from '../../../context/UserContext';


const User = ({ logged }) => {

  const { userInfo, logOut } = useContext(UserContext);

  return (
      <div className="user_container">
        <div className="user_inicials">
          <div>
            {logged
              ? getInitials(userInfo.name, userInfo.lastname)
              : null}
          </div>
        </div>
        <div className="user_container_welcome">
          <div className="user_container_welcome_text">
            <h4 className="user_welcome">Hola,</h4>
            <h4 className="user_name">
            {`${capitalize(userInfo.name)} 
            ${capitalize(userInfo.lastname)}`}
            </h4>
          </div>
          <button className="close" onClick={logOut}>
            X
          </button>
        </div>
      </div>
  );
};

export default User;
