// components/ui/AlertModal.jsx
import React from "react";
import "./AlertModal.scss";

const AlertModal = ({ message, onClose }) => {
  if (!message) return null;

  return (
    <div className="alert_modal_overlay">
      <div className="alert_modal">
        <button className="alert_modal_close" onClick={onClose}>
          &times;
        </button>
        <p>{message}</p>
      </div>
    </div>
  );
};

export default AlertModal;
