import React from "react";
import { Link } from "react-router-dom";
import "../header.scss";

const Admin = () => {
  return (
    //
    <>
      <div className="admin_header_container">
        <Link to="administration">
          <h3>Administración</h3>
        </Link>
        <div className="admin_divider" />
      </div>
    </>
    //
  );
};

export default Admin;
