const URL_BACKEND = import.meta.env.VITE_BACKEND_URL;

/**
 * Makes an API request and handles errors.
 *
 * @param {string} url - The endpoint URL.
 * @param {string} requestName - The name of the request for error reporting.
 * @param {Object} [requestInfo] - Optional fetch options (method, headers, body, etc.).
 * @returns {Promise<Object>} The response object with status and data or error.
 */
const fetchApi = async (url, requestName, requestInfo) => {
  try {
    const response = await fetch(url, requestInfo);
    if (response.ok) {
      const data = await response.json();
      return { status: response.status, data: data };
    } else {
      if (response.status === 401) {
        console.error(new Error(`${response.status} invalid authentication`));
        throw new Error(`${response.status} invalid authentication`);
      }
      if (response.status === 403) {
        console.error(new Error(`${response.status} Token Expired`));
        throw new Error(`${response.status} Token Expired`);
      } else {
        console.error(
          new Error(`${response.status} Something went wrong with the server`)
        );
        throw new Error(
          `${response.status} Something went wrong with the server`
        );
      }
    }
  } catch (error) {
    return { status: error.message.substring(0, 3), requestName, error };
  }
};

/********************----- CATEGORIES ----**************************/

// List all categories
/**
 * Fetches all categories from the backend.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const getCategories = async () => {
  return await fetchApi(`${URL_BACKEND}/categories`, "getCategories");
};

/********************----- PRODUCTS -----********************/

// List all products
/**
 * Fetches all products from the backend.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const getProducts = async () => {
  return await fetchApi(`${URL_BACKEND}/products`, "getProducts");
};

// Get product by id
/**
 * Fetches a product by its ID.
 * @param {string|number} id - The product ID.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const getProductById = async (id) => {
  return await fetchApi(`${URL_BACKEND}/products/${id}`, "getProductById");
};

// Get product by categories
/**
 * Fetches products grouped by categories.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const getProductsByCategories = async () => {
  return await fetchApi(
    `${URL_BACKEND}/categories/products`,
    "getProductsByCategories"
  );
};

// Get product by category id
/**
 * Fetches products by category ID.
 * @param {string|number} id - The category ID.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const getProductsByCategoryId = async (id) => {
  return await fetchApi(
    `${URL_BACKEND}/products/category/${id}`,
    "getProductsByCategoryId"
  );
};

// Get products by city id
/**
 * Fetches products by city name.
 * @param {string} city - The city name.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const getProductsByCityName = async (city) => {
  return await fetchApi(
    `${URL_BACKEND}/products/city/${city}`,
    "getProductsByCityName"
  );
};

//post products
/**
 * Creates a new product.
 * @param {Object} productInfo - The product information to create.
 * @param {string} token - The authentication token.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const createProduct = async (productInfo, token) => {
  return await fetchApi(`${URL_BACKEND}/products`, "createProduct", {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
      Authorization: "Bearer " + token,
    },
    body: JSON.stringify(productInfo),
  });
};

/********************----- CITIES -----********************/

// List all cities
/**
 * Fetches all cities from the backend.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const getCities = async () => {
  return await fetchApi(`${URL_BACKEND}/cities`, "getCities");
};

/********************----- FEATURES -----********************/

// List all features
/**
 * Fetches all features from the backend.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const getFeatures = async () => {
  return await fetchApi(`${URL_BACKEND}/features`, "getFeatures");
};

/********************----- DATES -----********************/

// List available dates
/**
 * Fetches available products by date range.
 * @param {string} startDate - The start date (YYYY-MM-DD).
 * @param {string} endDate - The end date (YYYY-MM-DD).
 * @returns {Promise<Object>} The response object with status and data.
 */
export const getAvailableProductsByDate = async (startDate, endDate) => {
  return await fetchApi(
    `${URL_BACKEND}/findByDate/${startDate}/${endDate}`,
    "getAvailableProductsByDate"
  );
};

/********************----- DATES AND CITY -----********************/

// List available dates
/**
 * Fetches available products by date range and city ID.
 * @param {string} startDate - The start date (YYYY-MM-DD).
 * @param {string} endDate - The end date (YYYY-MM-DD).
 * @param {string|number} cityId - The city ID.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const getAvailableProductsByDateAndCity = async (
  startDate,
  endDate,
  cityId
) => {
  return await fetchApi(
    `${URL_BACKEND}/findByDate/${startDate}/${endDate}/${cityId}`,
    "getAvailableProductsByDateAndCity"
  );
};

/********************----- LOGIN -----**************************/

/**
 * Authenticates a user and returns a token.
 * @param {Object} userInfo - The user login information.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const loginUser = async (userInfo) => {
  return await fetchApi(`${URL_BACKEND}/auth/login`, "loginUser", {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: JSON.stringify(userInfo),
  });
};

/********************----- REGISTER -----**************************/

/**
 * Registers a new user.
 * @param {Object} userInfo - The user registration information.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const registerUser = async (userInfo) => {
  return await fetchApi(`${URL_BACKEND}/users`, "registerUser", {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: JSON.stringify(userInfo),
  });
};

/********************----- RESERVATIONS -----**************************/

//post reservation
/**
 * Creates a new reservation.
 * @param {Object} reservationInfo - The reservation information to create.
 * @param {string} token - The authentication token.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const createReservations = async (reservationInfo, token) => {
  return await fetchApi(`${URL_BACKEND}/reservations`, "createReservations", {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
      Authorization: "Bearer " + token,
    },
    body: JSON.stringify(reservationInfo),
  });
};

// Get reservations by product
/**
 * Fetches reservations by product ID.
 * @param {string|number} id - The product ID.
 * @returns {Promise<Object>} The response object with status and data.
 */
export const getReservationsByProductId = async (id) => {
  return await fetchApi(
    `${URL_BACKEND}/reservations/product/${id}`,
    "getReservationsByProductId"
  );
};
