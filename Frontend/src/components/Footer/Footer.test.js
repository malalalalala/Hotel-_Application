import { render, screen } from "@testing-library/react";
import React from "react";
import Footer from "./Footer";

describe("<Footer/>", () => {
  const setup = () => {
    return render(<Footer />);
  };

  beforeEach(() => {
    setup();
  });

  it("renders footer", () => {
    const { container } = render(<Footer />);
    expect(container.firstChild.nodeName).toBe("FOOTER");
  });

  it("displays copyright text", () => {
    const copyRights = screen.getByText(/©2022 Digital Booking/i);
    expect(copyRights.toBeInTheDocument());
  });

  it("displays socialmedia links", () => {
    const socials = screen.getAllByRole("link");
    expect(socials.length).toBe(4);
  });
});
