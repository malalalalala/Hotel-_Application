import { useState, useRef, useEffect } from "react";

/**
 * Custom React hook to detect clicks outside a referenced element and control visibility state.
 *
 * @returns {Array} [ref, isVisible, setIsVisible] - ref: React ref object, isVisible: boolean, setIsVisible: function.
 */
const useOutsideClick = () => {
  const [isVisible, setIsVisible] = useState(false);
  const ref = useRef();

  const handleOutsideClick = () => {
    if (ref.current) {
      setIsVisible(false);
    }
  };

  useEffect(() => {
    document.addEventListener("click", handleOutsideClick);
    return () => {
      document.removeEventListener("click", handleOutsideClick);
    };
  }, []);

  return [ref, isVisible, setIsVisible];
};

export default useOutsideClick;
