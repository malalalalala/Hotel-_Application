-- ============================
--       POBLAR TABLA CATEGORIES
-- ============================
INSERT INTO categories (title, description, image_url)
  VALUES ('Hoteles',  'Confortables con todos los servicios y comodidades ', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/455745951.jpg?k=d45ca051f70646f85e7b59163f71a6d9657d5b2c6a6c75dd081a88f49eb91010&o=');

INSERT INTO categories (title, description, image_url)
  VALUES ('Glamping', 'Campamentos de lujo que te permiten disfrutar de la naturaleza con estilo y confort.', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/457216177.jpg?k=9ae8bf04077993531772f6d3837fe59f1333eef8e70c17dfb439a74e3c9a7628&o=&hp=1');

INSERT INTO categories (title, description, image_url)
  VALUES ('Airbnb', 'Alojamientos únicos ofrecidos por anfitriones locales', 'https://a0.muscache.com/im/pictures/miso/Hosting-1063889573195406074/original/79b858a9-b10f-409b-b7c8-bc44e9389364.jpeg?im_w=1200');

INSERT INTO categories (title, description, image_url)
  VALUES ('Hosterias', 'Ven y relajate en la mejor estadía', 'https://cincohorizontes.com/wp-content/uploads/2021/06/image_6487327-3.jpg');


-- ============================
--       POBLAR TABLA CITIES
-- ============================
INSERT INTO cities (name, country, state)
  VALUES ('Guatape', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Jardín', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Santa Fe de Antioquia', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Jericó', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Rionegro', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('San Rafael', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('San Carlos', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Sopetrán', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('La Ceja', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('San Ronque', 'Antioquia', 'Colombia');


-- ============================
--       POBLAR TABLA PRODUCTS
-- ============================
INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Los Recuerdos',
    'Vistas panorámicas al embalse Peñol-Guatapé.',
    'Consulta las políticas del hotel al reservar.',
    'A orillas del embalse Peñol-Guatapé',
    85,
    'Muy bueno',
    4,
        'Disfruta de la tranquilidad junto al embalse.',
        'Ofrece vistas panorámicas al embalse, piscina, restaurante y habitaciones confortables.',
    6.2362,
   -75.1495,
    'Check-out: 1.50:00 No se permiten fiestas No fumar',
    'Consulta al hotel.',
    1,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Hacienda Balandú',
    'Amplias zonas verdes, piscina y spa en Jardín.',
    'Consulta las políticas del hotel al reservar.',
    'Kilómetro 1 vía Río sucio, Jardín, Antioquia',
    99,
    'Excelente',
    5,
    'Relájate en la naturaleza de Jardín.',
    'Cuenta con amplias zonas verdes, piscina, spa y restaurante.',
     5.5915,
    -75.8122,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Consulta al hotel',
    1,
    2
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel San Ángel',
    'Estilo colonial con piscina y jacuzzi en Santa Fe de Antioquia.',
    'Consulta las políticas del hotel al reservar.',
    'calle 9 #1-110, Barrio Santa Lucia, Santa Fé de Antioquia, Antioquia',
    74,
    'Bueno',
    3,
    'Sumérgete en la historia de Santa Fe.',
    'Estilo colonial, piscina para adultos, jacuzzi, solárium y restaurante.',
     6.5552,
     75.8230,
    'Consulta al hotel.',
    'Consulta al hotel.',
    1,
    3
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Cauca Viejo Fundadores',
    'Arquitectura tradicional cerca de Jericó.',
    'Consulta las políticas del hotel al reservar.',
    'En el corregimiento de Cauca Viejo, cerca de Jericó',
    93,
    'Muy bueno',
    4,
    'Ideal para eventos y escapadas románticas.',
    'rquitectura tradicional, ideal para eventos y escapadas románticas.',
     5.7925,
     -75.7953,
    'Consulta al hotel.',
    'Consulta al hotel.',
    1,
    4
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Las Lomas',
    'Hotel de lujo cerca del Aeropuerto José María Córdova.',
    'Consulta las políticas del hotel al reservar.',
    'Glorieta Aeropuerto José María Córdova, Rionegro, Antioquia',
    85,
    'Muy bueno',
    4,
    'Disfruta de servicios de alta calidad cerca del aeropuerto.',
    'Hotel de lujo con spa, piscina, gimnasio y restaurante gourmet.',
     6.1640,
     -75.4230,
    'Consulta al hotel.',
    'Consulta al hotel.',
    1,
    5
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel San Rafael',
    'Ofrece actividades al aire libre, piscina natural y cabañas.',
    'Consulta las políticas del hotel al reservar.',
    'Calle 20 #19-61 san rafael, 053830 San Rafael, Colombia',
    97,
    'Excelente',
    5,
    'Destino ecológico por excelencia.',
    'Ofrece actividades al aire libre, piscina natural y alojamiento en cabañas.',
     6.2960,
    -75.0200,
    'Consulta al hotel.',
    'Consulta al hotel.',
    1,
    6
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel El Mirador',
    'Alojamiento tradicional con fácil acceso a la naturaleza.',
    'Consulta las políticas del hotel al reservar.',
    'Centro del municipio, San Carlos, Antioquia',
    65,
    'Bueno',
    2,
    'El paraíso turístico de Antioquia.',
    'Alojamiento tradicional con fácil acceso a las principales atracciones naturales.',
      6.1870,
     -74.9930,
    'Consulta al hotel.',
    'Consulta al hotel.',
    1,
    7
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Del Trópico',
    'Encantador hotel boutique de 4 estrellas en el cálido municipio de Sopetrán.',
    'Consulta las políticas del hotel al reservar.',
    'Carrera 12 #3-419, Vereda Llano de Montaña, Sopetrán, Antioquia, Colombia',
    92, -- Valor sugerido, puedes ajustarlo
    'Excelente', -- Valor sugerido, puedes ajustarlo
    4, -- Valor sugerido, puedes ajustarlo (es un hotel de 4 estrellas)
    'Un oasis de descanso y confort en el corazón tropical de Antioquia.',
    'El Hotel Del Trópico es un encantador hotel boutique de 4 estrellas situado en el cálido municipio de Sopetrán, a aproximadamente 40 minutos de Medellín. Rodeado de exuberante naturaleza y un clima tropical, ofrece a sus huéspedes una experiencia de descanso y confort. Entre sus instalaciones destacan una piscina al aire libre, spa y centro de bienestar, restaurante y bar. Las habitaciones están equipadas con aire acondicionado, Wi-Fi gratuito, baño privado y algunas cuentan con balcón privado. El hotel también ofrece servicios como recepción 24 horas, servicio de habitaciones y organización de tours.',
    6.50167,    -- Latitud
    -75.7433,   -- Longitud
    'Check-in a partir de las 15:00. Check-out hasta las 12:00 PM. No se permiten fiestas. No fumar en habitaciones.',
    'Protocolos de seguridad e higiene implementados. Detectores de humo en todas las áreas.',
    1,   -- id_category: Hoteles
    8    -- id_city: Sopetrán
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel del Parque',
    'Alojamiento cómodo en el corazón de La Ceja.',
    'Consulta las políticas del hotel al reservar.',
    'Parque Principal, La Ceja',
    75,           -- 'point' (número)
    'Bueno',      -- 'opinion' (cadena de texto)
    3,            -- 'star' (número entero para las estrellas)
    'Estadía céntrica en un paisaje montañoso.',
    'Situado frente al parque principal, este hotel ofrece alojamiento cómodo con servicios básicos y la conveniencia de estar a pocos pasos de restaurantes y cafés, en medio de los bellos paisajes montañosos de La Ceja.',
    6.0336,
    -75.4344,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Consulta al hotel.',
    1, -- id_category: Hoteles
    9  -- id_city: La Ceja
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel San Roque',
    'Ubicado a tan solo una cuadra del parque principal del municipio de San Roque, Antioquia.',
    'Consulta las políticas del hotel al reservar.',
    'Una cuadra del parque principal, San Roque, Antioquia',
    88,
    'Muy bueno',
    4,
    'Experimenta la cordialidad antioqueña en un entorno colonial.',
    'Ubicado a tan solo una cuadra del parque principal del municipio de San Roque, Antioquia, el Hotel Colonial San Roque ofrece a sus visitantes una experiencia acogedora en el corazón de la "Tierra de la Cordialidad". Su estratégica ubicación permite a los huéspedes disfrutar de la arquitectura colonial y la calidez de sus habitantes, características distintivas de este encantador municipio.',
    6.485831,
    -75.019623,
    'Check-out: 12:00 PM No se permiten fiestas. No fumar.',
    'Consulta al hotel.',
    1,   -- id_category: Hoteles
    10   -- id_city: San Ronque
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
  VALUES ('Hotel Los Recuerdos ', 'https://cf.bstatic.com/xdata/images/xphoto/2560x1280/72900619.jpg?k=37c05aec9f8fc9cbd06fab0f9841b0d8d871c47ec0754faac6a5bada4fc385aa&o=
', 1);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/455745750.jpg?k=e3334d812a28233bd444b6f193fb05debb873abc75fdbedb24f13cd78e0fb5dd&o=&hp=1', 1);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos', 'https://cf.bstatic.com/xdata/images/xphoto/2560x1280/72900619.jpg?k=37c05aec9f8fc9cbd06fab0f9841b0d8d871c47ec0754faac6a5bada4fc385aa&o=', 1);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/455745630.jpg?k=dab9358b0c582d3655798c95a23b63c79e364e48a8a0dac424e130aed9bcdcb8&o=&hp=1', 1);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/455746236.jpg?k=715453101f5698d5d20b686d3497832b7f14e204a6969af702398c8d9c2bd851&o=&hp=1', 1);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://static.wixstatic.com/media/b78411_113463b99779428ab4f777358a1c3b36~mv2_d_6000_4000_s_4_2.jpg/v1/fill/w_980,h_508,q_90/b78411_113463b99779428ab4f777358a1c3b36~mv2_d_6000_4000_s_4_2.jpg', 2);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://www.comfenalcoantioquia.com.co/wcm/connect/2854aefd-0ab2-4100-85e1-bec0439bafa0/Hotel+Hacienda+Baland%C3%BA+1+grande.jpg', 2);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://lh6.googleusercontent.com/BgHhmsFUOPkKr__NaN_ekQRfKcRjqahUz6HEiEnaHEY=w1467-h825-no', 2);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://lh4.googleusercontent.com/MQ0TWRir0OzLcQIGhHdjrsjRxo_GZXu5LaW5E4Fe56g=w1467-h825-no', 2);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://lh6.googleusercontent.com/gBGHmtquIV9sbG9yWgm5at2BGNKGTfrP_nZSy7CYgA8=w1467-h825-no', 2);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://www.hotelsanangel.co/wp-content/uploads/2022/04/@davidsolera-50-scaled.jpg', 3);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://www.hotelsanangel.co/wp-content/uploads/2022/04/@davidsolera-48-scaled.jpg', 3);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://www.hotelsanangel.co/wp-content/uploads/2022/04/@davidsolera-11-scaled.jpg', 3);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://cdn0.matrimonio.com.co/vendor/3841/3_2/960/jpeg/hotelsanangelsantafe-269819527-462441975278373-2338605730929762579-n_10_163841-164336783634723.jpeg', 3);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/366325010.jpg?k=f0db2ab6b164e041e8af950f7608da13a52c281018907456b7206f405749d704&o=&hp=1', 4);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://lh3.googleusercontent.com/proxy/XYAj9JILMfbuz5YnTOVMdrHPzt4wxrm84AF3gVINshLTS3wKc14_6W0P2dS6xG7AiQAe9x1VE_jBOyQUhmLdUoFnJ12DEc1w2QeYw0xcwkMMWV5Lsn1telo9_oszKPO2OGO4QIifzynjffpSdabyo8kkYG9WbA=s680-w680-h510-rw', 4);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/516382587.jpg?k=fdbfdb732460510a58d69f057200b14188d8f5246add47fd396d20a92b8833d1&o=&hp=1', 4);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/516382474.jpg?k=458be6259c1c15e709773dc32234677d4feacc97129dc1128ffb584d1d9c55bd&o=&hp=1', 4);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/516384030.jpg?k=bfa35ceabd09eae073c1d8c07fbae6cbb9b755918ff846967b5f56df0a6ab83c&o=&hp=1', 4);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Las Lomas', 'https://images.getaroom-cdn.com/image/upload/s--H1rGTZQw--/c_limit,e_improve,fl_lossy.immutable_cache,h_940,q_auto:good,w_940/v1709411614/1add14322a559871cf25c8c6357ec5bf25bd9ba9?atc=e7cd1cfa', 5);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Las Lomas', 'https://images.getaroom-cdn.com/image/upload/s--sXeLDQwJ--/c_limit,e_improve,fl_lossy.immutable_cache,h_940,q_auto:good,w_940/v1682770664/935855b8b6e6973dc1795cb628cf67e3c3a6a540?atc=e7cd1cfa', 5);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Las Lomas', 'https://images.getaroom-cdn.com/image/upload/s--Pb0ZdGLk--/c_limit,e_improve,fl_lossy.immutable_cache,h_940,q_auto:good,w_940/v1665869709/940447773bd3a2f5b8bc4a0484803768a64fb373?atc=e7cd1cfa', 5);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Las Lomas', 'https://lh3.googleusercontent.com/p/AF1QipOvPcPUtbovG8QD8nSlihgvKSfXrO24Jmxyj-4=s680-w680-h510-rw', 5);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://cincohorizontes.com/wp-content/uploads/2024/11/IMG_1131.jpeg', 6);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://cincohorizontes.com/wp-content/uploads/2024/11/IMG_1139.jpeg', 6);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://cincohorizontes.com/wp-content/uploads/2024/11/IMG_1141.jpeg', 6);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://cincohorizontes.com/wp-content/uploads/2024/11/IMG_1140.jpeg', 6);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://cincohorizontes.com/wp-content/uploads/2024/11/IMG_1127.jpeg', 6);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/607035601.jpg?k=4f8eea4d7654930f3148f019a748d873eea5eb3656de1f81f9880334bb7d24a1&o=&hp=1', 7);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/607580473.jpg?k=6d16773d976fe7d921e82c83b5f7c14b96bb17e85069c8ed3690d1585430591a&o=&hp=1', 7);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/607035594.jpg?k=01961806b5cd27a390c06a0c590fe0e2a9f588924243964b31be5975df84ceec&o=&hp=1', 7);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/607958715.jpg?k=b1992c96196771cd1369de8b7b7e5fc42c9c4c36b0928c149a777640b398b0ae&o=&hp=1', 7);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Del Trópico', 'https://deltropicohotel.com/wp-content/uploads/2024/02/IMG_5976.jpg', 8);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Del Trópico', 'https://deltropicohotel.com/wp-content/uploads/2024/02/416361410_18405048442058539_8334299185065194660_n.jpg', 8);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel del Parque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/165934344.jpg?k=f3442bc75bbeef318c27f0f9e6f321ddbfdab803daeeacc73f99020e1af15225&o=&hp=1', 9);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel del Parque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486552362.jpg?k=bde2d52267b22cab29994ac7c568af54962e333bb6eb4a5a8ad152ce9d0971a1&o=&hp=1', 9);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel del Parque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486552226.jpg?k=7f2473b93175c5c1f7a56b799fe248ccf7ea78f12b98f7c485775ad23818db78&o=', 9);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel del Parque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/69032396.jpg?k=16548fc662b9e633e6bcf57f5833385b29a5abbdb78580b0a4e4e498d6cb6cbb&o=&hp=1', 9);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Roque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/569886133.jpg?k=e9f8841859a12fa0383cc7b80c39b9ff079644d0e872804b401bdbdc1fc4b6c2&o=&hp=1', 10);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Roque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/622923258.jpg?k=9de942a2676ed44d481e9066378c42f88b9ad46e56338460dbbd56fbbe53ac7e&o=&hp=1', 10);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Roque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/569885907.jpg?k=4164b6b2af910396ce8fc920f696963dc9dcad0024c2650cc7282cdbcde992ee&o=&hp=1', 10);
INSERT INTO images (title, url, id_product)
   VALUES ('Hotel San Roque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/569885711.jpg?k=6e1936329f8e7c25ebf3602c13297ad6f099b3233c5f5cda16f3cc735ce93515&o=&hp=1', 10);


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
INSERT INTO users (name, last_name, email, password,role_id)
  VALUES ('Bruno', 'Rodriguez', 'brodriguez@gmail.com', '$2a$12$zGAXSVRkhPwAzVuLhV2sJOQnyNFQxNBVobFlEUFdyer6qZMhpJ/EW',2);
  --abc1234

-- Inserta un usuario con rol User (role_id = 2) y password de 7 caracteres
INSERT INTO users (name, last_name, email, password, role_id)
  VALUES ('Laura', 'Ramos', 'lalo@gmail.com', '$2a$12$PAox1AJUWXrPnM.62kICguJk.ppd110tgTAU2lhvX/MD6fx78jQ0e', 1);
  --1234567


-- ============================
--       POBLAR TABLA RESERVATIONS
-- ============================
INSERT INTO reservations (check_in, check_out, product_id, user_id)
  VALUES ('2022-11-20', '2022-11-30', 1, 1);


-- ============================
--       SELECT * FROM CATEGORIES;
--         SELECT * FROM CITIES;
--         SELECT * FROM FEATURES;
--         SELECT * FROM IMAGES;
--         SELECT * FROM PRODUCTS_HAS_FEATURES;
--         SELECT * FROM RESERVATIONS;
 --        SELECT * FROM ROLES;
 --        SELECT * FROM USERS;

-- ============================