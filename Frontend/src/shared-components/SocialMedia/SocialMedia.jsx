import React from "react";
import "./socialMedia.scss";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faFacebook,
  faLinkedin,
  faInstagram,
  faTwitter,
} from "@fortawesome/free-brands-svg-icons";

const SocialMedia = ({ footer }) => {
  return (
    <div className={`socialMedia_container ${footer ? "hide" : ""}`}>
      <a href="https://facebook.com" target="_blank">
        <FontAwesomeIcon icon={faFacebook} />
      </a>
      <a href="https://linkedin.com" target="_blank">
        <FontAwesomeIcon icon={faLinkedin} />
      </a>
      <a href="https://twitter.com" target="_blank">
        <FontAwesomeIcon icon={faTwitter} />
      </a>
      <a href="https://instagram.com" target="_blank">
        <FontAwesomeIcon icon={faInstagram} />
      </a>
    </div>
  );
};

export default SocialMedia;
