-- ============================
--       POBLAR TABLA CATEGORIES
-- ============================
INSERT INTO categories (title, description, image_url)
  VALUES ('Hoteles', 'Hotel 5 estrellas', 'https://hotelappimages.s3.us-east-1.amazonaws.com/assets/categories/hoteles.png');

INSERT INTO categories (title, description, image_url)
  VALUES ('Departamentos', 'Departamento en el centro de la ciudad', 'https://hotelappimages.s3.us-east-1.amazonaws.com/assets/categories/hostels.png');

INSERT INTO categories (title, description, image_url)
  VALUES ('Hostels', 'Hermoso hostal con todas la comodidades que necesitas', 'https://hotelappimages.s3.us-east-1.amazonaws.com/assets/categories/departamentos.png');

INSERT INTO categories (title, description, image_url)
  VALUES ('Bed and Breakfast', 'Ven y relajate en la mejor estadía', 'https://hotelappimages.s3.us-east-1.amazonaws.com/assets/categories/bedAndBreakfast.png');


-- ============================
--       POBLAR TABLA CITIES
-- ============================
INSERT INTO cities (name, country, state)
  VALUES ('Buenos Aires', 'Argentina', 'Buenos Aires');

INSERT INTO cities (name, country, state)
  VALUES ('Mar de Plata', 'Argentina', 'Buenos Aires');

INSERT INTO cities (name, country, state)
  VALUES ('Cordoba', 'Argentina', 'Cordoba');

INSERT INTO cities (name, country, state)
  VALUES ('Rosario', 'Argentina', 'Santa Fe');

INSERT INTO cities (name, country, state)
  VALUES ('San Miguel de Tucumán', 'Argentina', 'Tucumán');

INSERT INTO cities (name, country, state)
  VALUES ('Salta', 'Argentina', 'Salta');

INSERT INTO cities (name, country, state)
  VALUES ('San Carlos de Bariloche', 'Argentina', 'Río Negro');

INSERT INTO cities (name, country, state)
  VALUES ('Mendoza', 'Argentina', 'Mendoza');

INSERT INTO cities (name, country, state)
  VALUES ('San Salvador de Jujuy', 'Argentina', 'Jujuy');

INSERT INTO cities (name, country, state)
  VALUES ('Villa Gesell', 'Argentina', 'Buenos Aires');


-- ============================
--       POBLAR TABLA PRODUCTS
-- ============================
INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Grande',
    'Gran hotel en el centro de la ciudad',
    'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.',
    'A 1 km del centro de la ciudad',
    85,
    'Muy bueno',
    4,
    'Alójate en el corazón de Buenos Aires',
    'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. En las inmediaciones también hay varios lugares de interés, como la calle Florida, el centro comercial Galerías Pacífico, la zona de Puerto Madero, la plaza de Mayo y el palacio Municipal. Nuestros clientes dicen que esta parte de Buenos Aires es su favorita, según los comentarios independientes. El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
    -34.589716,
    -58.385892,
    'Check-out: 1.50:00 No se permiten fiestas No fumar',
    'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus Detector de humo',
    1,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Hermitage',
    'Espléndido en el centro de la ciudad',
    'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.',
    'A 500 mts del centro de la ciudad',
    99,
    'Excelente',
    5,
    'Alójate a pocos minutos de las sierras',
    'Está situado a solo unas calles de la avenida San Martín y del paseo Guemes. En las inmediaciones también hay varios lugares de interés como el Shopping Patio Olmos, el parque de la ciudad y los edificios históricos. Nuestros clientes dicen que esta parte de Córdoba es su favorita, según los comentarios independientes. El Hotel es un hotel sofisticado de 5 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
    -31.424469,
    -64.187478,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus Detector de humo',
    1,
    3
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostel Viajeros',
    'Hermoso hostel para quienes viajan solos',
    'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.',
    'En pleno centro porteño',
    74,
    'Bueno',
    3,
    'Alójate en el corazón de Buenos Aires',
    'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. Las habitaciones comparten baño y otras facilidades. El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
    -34.589716,
    -58.385892,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus Detector de humo',
    3,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostel Malevo',
    'La mejor experiencia para tus viajes',
    'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.',
    'En la mejor zona de cervecerías',
    93,
    'Muy bueno',
    4,
    'Alójate en el corazón de Buenos Aires',
    'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. El Hostel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
    -34.589716,
    -58.385892,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus Detector de humo',
    3,
    4
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Duplex Recoleta',
    'Increible departamento en el centro de Recoleta',
    'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.',
    'A 700 m del Jardín Japonés',
    85,
    'Muy bueno',
    4,
    'Alójate en el corazón de Buenos Aires',
    'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. El Duplex es un elegante departamento que goza de una ubicación privilegiada, cerca de prestigiosas galerías de arte y zonas comerciales. Además, cuenta con WiFi gratuita y un desayuno variado de 07:00 a 10:30.',
    -34.589716,
    -58.385892,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus Detector de humo',
    2,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Bristol',
    'Con una hermosa vista al mar',
    'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.',
    'A 200 m del Casino Plata',
    97,
    'Excelente',
    5,
    'Alójate en el corazón de Buenos Aires',
    'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. El Bristol es un lujoso hotel con vista al mar, ideal para disfrutar de una experiencia única y exclusiva. Además, ofrece WiFi gratuita y un variado desayuno de 07:00 a 10:30.',
    -34.589716,
    -58.385892,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus Detector de humo',
    2,
    2
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Riu',
    'Como la sencillez de tu hogar',
    'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.',
    'Frente al parque central',
    65,
    'Bueno',
    2,
    'Alójate en el corazón de Buenos Aires',
    'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. El Riu es un cómodo hotel con todas las facilidades, ideal para viajeros que buscan comodidad y una experiencia acogedora. Además, cuenta con WiFi gratuita y un desayuno variado de 07:00 a 10:30.',
    -34.589716,
    -58.385892,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus Detector de humo',
    4,
    3
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Departamento AndaLucia',
    'Espléndido departamento en el centro de la ciudad',
    'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.',
    'A 500 mts del centro de la ciudad',
    99,
    'Excelente',
    5,
    'Alójate a pocos minutos de las sierras',
    'Está situado a solo unas calles de la avenida San Martín y del paseo Guemes. El Departamento AndaLucia ofrece una experiencia única con un diseño elegante y todas las comodidades modernas. Además, cuenta con WiFi gratuita y un variado desayuno de 07:00 a 10:30.',
    -31.424469,
    -64.187478,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus Detector de humo',
    1,
    3
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostel Nomadas',
    'Hermoso hostel para quienes viajan solos o acompañados',
    'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.',
    'En pleno centro porteño',
    74,
    'Bueno',
    3,
    'Alójate en el corazón de Buenos Aires',
    'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. El Hostel Nomadas ofrece un ambiente acogedor y facilidades compartidas para viajeros. Además, cuenta con WiFi gratuita y un desayuno variado de 07:00 a 10:30.',
    -34.589716,
    -58.385892,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus Detector de humo',
    3,
    1
  );


-- ============================
--       POBLAR TABLA FEATURES
-- ============================
INSERT INTO features (name, icon)
  VALUES ('Wifi', 'faWifi');

INSERT INTO features (name, icon)
  VALUES ('Aire acondicionado', 'faSnowflake');

INSERT INTO features (name, icon)
  VALUES ('Cocina', 'faKitchenSet');

INSERT INTO features (name, icon)
  VALUES ('Televisor', 'faTV');

INSERT INTO features (name, icon)
  VALUES ('Apto mascotas', 'faPaw');

INSERT INTO features (name, icon)
  VALUES ('Pileta', 'faPersonSwimming');

INSERT INTO features (name, icon)
  VALUES ('Estacionamiento gratuito', 'faCar');


-- ============================
--       POBLAR TABLA IMAGES
-- ============================
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Gran Plaza', 'https://hotelappimages.s3.us-east-1.amazonaws.com/assets/hotel_1.png', 1);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Gran Plaza', 'https://0521ptc6n2-g01-products-images.s3.us-east-2.amazonaws.com/galery_images/galery+(1).jpg', 1);

-- Agrega aquí el resto de los INSERT para la tabla images, siguiendo el mismo formato.


-- ============================
--  POBLAR TABLA PRODUCTS_HAS_FEATURES
-- ============================
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 1);


-- ============================
--       POBLAR TABLA ROLES
-- ============================
INSERT INTO roles (name)
  VALUES ('Admin');

INSERT INTO roles (name)
  VALUES ('User');


-- ============================
--       POBLAR TABLA USERS
-- ============================
INSERT INTO users (name, last_name, email, password)
  VALUES ('Bruno', 'Rodriguez', 'brodriguez@gmail.com', 'a123');


-- ============================
--       POBLAR TABLA RESERVATIONS
-- ============================
INSERT INTO reservations (check_in, check_out, product_id, user_id)
  VALUES ('2022-11-20', '2022-11-30', 1, 1);
