import { useState, useRef, useEffect } from "react";

/**
 * Custom React hook to detect clicks outside a referenced element and control visibility state.
 *
 * @returns {[React.RefObject, boolean, function]} An array with the ref, visibility state, and setter function.
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
