import React from "react";
import "./footer.scss";
import SocialMedia from "../../shared-components/SocialMedia/SocialMedia";

/**
 * Footer component for displaying the website footer and social media links.
 *
 * @component
 * @returns {JSX.Element} The rendered footer component.
 */
const Footer = () => {
  return (
    <footer className="footer_container">
      <div className="footer_container_content">
        <h6 className="footer_container_legal">©2025 Parchear en Antioquia</h6>
        <SocialMedia footer={true} />
      </div>
    </footer>
  );
};

export default Footer;
