INSERT INTO categories (title, description, image_url)
  VALUES ('Hoteles',  'Confortables con todos los servicios y comodidades ', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/455745951.jpg?k=d45ca051f70646f85e7b59163f71a6d9657d5b2c6a6c75dd081a88f49eb91010&o=');

INSERT INTO categories (title, description, image_url)
  VALUES ('Glamping', 'Campamentos de lujo que te permiten disfrutar de la naturaleza con estilo y confort.', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/457216177.jpg?k=9ae8bf04077993531772f6d3837fe59f1333eef8e70c17dfb439a74e3c9a7628&o=&hp=1');

INSERT INTO categories (title, description, image_url)
  VALUES ('Airbnb', 'Alojamientos únicos ofrecidos por anfitriones locales', 'https://a0.muscache.com/im/pictures/miso/Hosting-1063889573195406074/original/79b858a9-b10f-409b-b7c8-bc44e9389364.jpeg?im_w=1200');

INSERT INTO categories (title, description, image_url)
  VALUES ('Hosterias', 'Ven y relajate en la mejor estadía', 'https://cincohorizontes.com/wp-content/uploads/2021/06/image_6487327-3.jpg');

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

INSERT INTO cities (name, country, state)
  VALUES ('Cisneros', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Cocorná', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('San Luis', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Puerto Triunfo', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Barbosa', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Fredonia', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('El Carmen de Viboral', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Marinilla', 'Antioquia', 'Colombia');




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
     -75.8230,
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

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Levit Glamping',
    'Ubicado en una reserva natural, ofrece alojamientos con jacuzzi y vistas a la represa .',
    'Consulta las políticas del lugar al reservar.',
    'Reserva Natural Guatapé, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.2333,
    -75.1833,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Glamping Montecarlo Lodge',
    'Ofrece cubos de madera con jacuzzi y vistas panorámicas.',
    'Consulta las políticas del lugar al reservar.',
    'Vía Vereda La Zulia, Guatapé, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.2333,
    -75.1833,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    1
  );


INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Gulupa Ecolodge',
    'Glamping ecológico con vista a las montañas y plantación de café.',
    'Consulta las políticas del lugar al reservar.',
    'Vereda La Selva, a 4 kilómetros de la plaza principal, al lado de Café Jardín, Jardín, Colombia',
    90,
    'Excelente',
    4,
    'Conecta con la naturaleza en Jardín.',
    'Disfruta de una experiencia de glamping sostenible en medio de las montañas y cafetales de Jardín, con vistas panorámicas, privacidad y confort.',
    5.5915,
    -75.8122,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    2
  );



INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Nalua Glamping y Hotel',
    'Combinación de hotel y glamping en entorno natural, con vista a la montaña.',
    'Consulta las políticas del lugar al reservar.',
    'Kilómetro 6, Vereda El Quimbayo, 051077 San Fé, Colombia',
    90,
    'Excelente',
    4,
    'Relájate entre naturaleza y confort.',
    'Disfruta de una experiencia que combina el lujo del glamping con la comodidad hotelera en medio de un entorno natural y tranquilo.',
    6.4551,
    -75.7236,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    3
  );


INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Glamping Jericó, El Edén',
    'Ofrece alojamiento con jacuzzi privado y vistas al jardín.',
    'Consulta las políticas del lugar al reservar.',
    'Sector Puente Sucre, Finca Santa Cruz, Jericó, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    5.7900,
    -75.7800,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    4
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Sukha Glamping',
    'Ofrece alojamientos con puntuación excepcional por parte de los huéspedes.',
    'Consulta las políticas del lugar al reservar.',
    'Aeropuerto José María Córdova-Rionegro, Rionegro, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.1645,
    -75.4231,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    5
  );


INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Cabaña Glamping Los Canarios',
    'Ofrece alojamiento con piscina natural y cocina al aire libre.',
    'Consulta las políticas del lugar al reservar.',
    'Vereda La Rápida, San Rafael, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.3000,
    -75.0333,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    6
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Glamping El Tabor',
    'Ofrece experiencias de glamping en un entorno natural.',
    'Consulta las políticas del lugar al reservar.',
    'Vereda El Tabor, San Carlos, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.2000,
    -74.9833,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    7
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Glamping Flor del Monte',
    'Piscinas, zonas verdes y alojamiento familiar.',
    'Consulta las políticas del lugar al reservar.',
    'Vereda Llano de Montaña, Sopetrán, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.5000,
    -75.7500,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    8
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Madeira Glamping',
    'Ubicado en entorno natural, ideal para una escapada de lujo.',
    'Consulta las políticas del lugar al reservar.',
    'Km 4 vía Don Diego, La Ceja, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.0333,
    -75.4333,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    9
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Glamping Paraíso',
    'Experiencia de glamping en entorno natural, antes del casco urbano de San Roque.',
    'Consulta las políticas del lugar al reservar.',
    'Vía A San Roque, 2 kilómetros antes del casco urbano, 053030 San Roque, Colombia',
    90,
    'Excelente',
    4,
    'Una escapada natural en San Roque.',
    'Disfruta de un entorno natural con privacidad, vistas a la montaña y todas las comodidades del glamping.',
    6.4855,
    -75.0170,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    10
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'El Mirador de San Joaquín',
    'Alojamiento en cabaña con jacuzzi privado y vistas al jardín.',
    'Consulta las políticas del lugar al reservar.',
    'San Joaquín, 054430 San Luis, Colombia',
    90,
    'Excelente',
    4,
    'Una escapada natural en San Luis.',
    'Disfruta de una cabaña acogedora con jacuzzi privado, rodeada de naturaleza y vistas al jardín.',
    6.0413,
    -74.9917,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    13
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostería El Trébol',
    'Alojamiento campestre con vistas al lago y actividades al aire libre en Guatapé.',
    'Consulta las políticas del establecimiento al reservar.',
    'Vereda La Piedra, 700 metros vía principal, 053847 Guatapé, Colombia',
    96,
    'Excepcional',
    4,
    'Naturaleza y confort junto al embalse.',
    'Disfruta de cabañas privadas con vistas al lago, desayuno americano, actividades como pesca, ciclismo y parque acuático, todo en un entorno natural y tranquilo.',
    6.22626,
    -75.18648,
    'Check-out: 1:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostería El Paraíso Jardín',
    'Alojamiento tradicional con encanto en el corazón de Jardín, Antioquia.',
    'Consulta las políticas del establecimiento al reservar.',
    'Calle 16, Jardín, Antioquia, 056050, Colombia',
    92,
    'Muy bueno',
    4,
    'Relájate en un entorno pintoresco y tranquilo.',
    'Ofrece habitaciones confortables, zonas comunes para el descanso, cercanía al centro histórico y un ambiente acogedor con excelente atención al cliente.',
    5.5955,
    -75.8172,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    2
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostería Tonusco Campestre',
    'Alojamiento campestre con piscina, naturaleza y tranquilidad en Santa Fe de Antioquia.',
    'Consulta las políticas del establecimiento al reservar.',
    'Calle 7 con Carrera 7, Barrio Barranca - El Gualí, Santa Fe de Antioquia, 570050, Colombia',
    94,
    'Excelente',
    4,
    'Descanso natural en una zona histórica.',
    'Ofrece amplias instalaciones rodeadas de naturaleza, piscina al aire libre, restaurante, zonas verdes y cómodas habitaciones para una estadía relajante.',
    6.5560,
    -75.8260,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    3
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostería Puerta del Nus',
    'Alojamiento acogedor en el corazón de Cisneros, ideal para el descanso.',
    'Consulta las políticas del establecimiento al reservar.',
    'Calle 19A, Barrio El Uno, 053050 Cisneros, Colombia',
    88,
    'Muy bueno',
    3,
    'Comodidad en el corredor del Nus.',
    'Ofrece habitaciones cómodas, restaurante, parqueadero y zonas comunes tranquilas para viajeros y familias.',
    6.5376,
    -75.0908,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    11
  );
INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostería La Medusa',
    'Rodeada de naturaleza, ideal para desconectarse y disfrutar de la tranquilidad de Cocorná.',
    'Consulta las políticas del establecimiento al reservar.',
    'Cl 21 #28-42, Quebrada Guayabal, Cocorná, Antioquia, Colombia',
    86,
    'Muy bueno',
    4,
    'Naturaleza y confort en un solo lugar.',
    'Ubicada en medio de la vegetación, ofrece habitaciones cómodas, piscina natural, restaurante típico y acceso a la quebrada Guayabal.',
    6.0076,
    -75.1725,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    12
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Finca Hotel Ríos Claros',
    'Alojamiento campestre con acceso a zonas verdes y cercanía a los ríos de San Luis.',
    'Consulta las políticas del establecimiento al reservar.',
    'Autopista Medellín-Bogotá km 130, 054430 San Luis, Colombia',
    89,
    'Excelente',
    4,
    'Tranquilidad natural a orillas del río.',
    'Rodeada de naturaleza, esta finca hotel ofrece espacios amplios, zona de camping, restaurante y acceso a ríos cercanos, ideal para el ecoturismo.',
    5.8996,
    -74.9657,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    13
  );
INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Cabaña Villa Jardín - Aldea Doradal - Santorini Colombiano',
    'Encantadora cabaña estilo mediterráneo en Doradal, ideal para relajarse en familia.',
    'Consulta las políticas del lugar al reservar.',
    'Aldea Doradal, Cabaña #82, 053448 Doradal, Puerto Triunfo, Colombia',
    90,
    'Excelente',
    4,
    'Descanso al estilo Santorini en Antioquia.',
    'Ubicada en la Aldea Doradal, esta cabaña combina arquitectura blanca y azul estilo Santorini con zonas verdes, terrazas amplias y cercanía al Río Claro.',
    5.8966,
    -74.7255,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    14
  );


INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Alojamiento entero: casa en Barbosa',
    'Hermosa casa entre las montañas a 42 km de Medellín.',
    'Consulta las políticas del anfitrión al reservar.',
    'Barbosa, Antioquia, Colombia',
    88,
    'Muy bueno',
    4,
    'Descanso entre montañas a pocos minutos de Medellín.',
    'Ubicada en un entorno montañoso y tranquilo, esta casa ofrece comodidad, vistas panorámicas y acceso rápido desde Medellín. Ideal para familias o parejas. Ten en cuenta que hay un peaje en la ruta.',
    6.4372,
    -75.3339,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al anfitrión.',
    3,
    15
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Finca Naya - Fredonia',
    'Alojamiento entero entre cafetales con vista al Río Cauca.',
    'Consulta las políticas del anfitrión al reservar.',
    'Fredonia, Antioquia, Colombia',
    93,
    'Excelente',
    5,
    'Naturaleza, altura y café.',
    'En las alturas sobre el Río Cauca, en medio de los verdes cafetales, se encuentra Finca Naya. Un alojamiento ideal para descansar, disfrutar del paisaje cafetero y conectarse con la naturaleza antioqueña.',
    5.9167,
    -75.6667,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'El alojamiento cuenta con protocolos de seguridad e información turística local.',
    3,
    16
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Casa Colonial en Santa Fe de Antioquia',
    'Alojamiento entero en el corazón del centro histórico.',
    'Consulta las políticas del anfitrión al reservar.',
    'Centro Histórico, Santa Fe de Antioquia, Colombia',
    95,
    'Excelente',
    5,
    'Disfruta del encanto colonial.',
    'Casa colonial completamente equipada ideal para familias o grupos. A pasos de la plaza principal, rodeada de arquitectura patrimonial, historia y clima cálido. Piscina privada y cocina tradicional.',
    6.5552,
    -75.8230,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'El alojamiento cuenta con extintores, información turística y recomendaciones locales.',
    3,
    3
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Condominio moderno en El Carmen',
    'A solo 1 minuto del parque principal de El Carmen de Viboral.',
    'Consulta las políticas del anfitrión al reservar.',
    'Centro, El Carmen de Viboral, Antioquia, Colombia',
    93,
    'Excelente',
    5,
    'Confort y ubicación privilegiada.',
    'Alojamiento tipo condominio completamente equipado. Ideal para parejas o viajeros que deseen explorar el arte cerámico y la cultura local. Cercano a restaurantes y zonas turísticas.',
    6.0821,
    -75.3351,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Cuenta con seguridad privada, acceso digital y recomendaciones de actividades locales.',
    3,
    17
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Casa Finca en Marinilla',
    'Hermosa y acogedora casa finca a 15 minutos de Marinilla.',
    'Consulta las políticas del anfitrión al reservar.',
    'Zona rural, a 15 minutos del centro de Marinilla, Antioquia, Colombia',
    91,
    'Excelente',
    5,
    'Tranquilidad y naturaleza en el oriente antioqueño.',
    'Esta casa finca ofrece un entorno campestre ideal para descansar, con amplias zonas verdes, espacios familiares y vistas a la naturaleza. Perfecta para una escapada rural cerca de la ciudad.',
    6.1710,
    -75.3319,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al anfitrión.',
    3,
    18
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
  VALUES ('Lavadero', 'faShirt');

INSERT INTO features (name, icon)
  VALUES ('Piscina', 'faPersonSwimming');

INSERT INTO features (name, icon)
  VALUES ('Estacionamiento gratuito', 'faCar');

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos ', 'https://cf.bstatic.com/xdata/images/xphoto/2560x1280/72900619.jpg?k=37c05aec9f8fc9cbd06fab0f9841b0d8d871c47ec0754faac6a5bada4fc385aa&o=', 1);

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

INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Exterior Vista Lago 1', 'https://www.levitglamping.com/wp-content/uploads/2021/03/Super-Eclipse-8.jpg', 11);

INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Exterior Vista Lago 2', 'https://www.levitglamping.com/wp-content/uploads/2021/03/Super-Eclipse-11.jpg', 11);

INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Exterior General', 'https://www.levitglamping.com/wp-content/uploads/2023/04/Glamping-guatape-Super-Eclipse-5.jpg', 11);

INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Jacuzzi', 'https://www.levitglamping.com/wp-content/uploads/2021/03/Super-Eclipse-12.jpg', 11);

INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Cubo Exterior 1', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/495123868.jpg?k=65c0197fae5db8c73f7427c088b4179a96535c905b6e3bf0b4abca4d6d1c9449&o=&hp=1', 12);

INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Cubo Exterior 2', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/495123886.jpg?k=2a96980c7c9c09224dbdf5d388374c0c0e3e7696c224589fd53dfd6dc8c14e0f&o=&hp=1', 12);

INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Vista Panorámica', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/287320054.jpg?k=8c87384c88a8bbc1282421e1e616a69aa1a678b7db338bba78959a3047b57bba&o=&hp=1', 12);

INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Interior', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/442190347.jpg?k=fc724729516d97982db5eb790aa07b61e6da60d0475b76896496c4102ba36147&o=&hp=1', 12);

INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Jacuzzi', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/304704943.jpg?k=a64af6bd2a14cd727637a181d9d7131286aeb72421f1e18e15dc45dbf266839a&o=&hp=1', 12);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Vista Exterior', 'https://content.r9cdn.net/rimg/himg/d2/f6/8c/booking-8009390-639150634-631214.jpg?crop=true&width=836&height=607&watermarkheight=16&watermarkpadding=16', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Habitación Principal', 'https://content.r9cdn.net/rimg/himg/c6/cf/c3/booking-8009390-640535898-755742.jpg?crop=true&width=836&height=607&watermarkheight=16&watermarkpadding=16', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Terraza Vista Montaña', 'https://content.r9cdn.net/rimg/himg/38/7c/c5/booking-8009390-639186706-695629.jpg?crop=true&width=836&height=607&watermarkheight=16&watermarkpadding=16', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Interior Cabaña', 'https://content.r9cdn.net/rimg/himg/8c/35/0b/booking-8009390-639186718-717507.jpg?crop=true&width=836&height=607&watermarkheight=16&watermarkpadding=16', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Zona de Descanso', 'https://content.r9cdn.net/rimg/himg/44/68/90/booking-8009390-639186712-711165.jpg?crop=true&width=836&height=607&watermarkheight=16&watermarkpadding=', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Exterior 1', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/421457677.jpg?k=f0c5a91e5884976a783ed169927b123ba1b5032e98c55255f742f2f34131d6f6&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Terraza Noche', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/512002756.jpg?k=0a03a73e42b05fe6dacbab6f8d48bd8deec5427893a5143987152c19b3773179&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Zona Verde', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/335528297.jpg?k=703639b217841c0b3ea66aab0730aa503a61ad15b7ee4aa020c034133ebac1a6&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Interior Habitación', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/335527842.jpg?k=ee8664104714b44c2344c8583e2e0c12bfd38d61e659ee64ee603d00ef226f32&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Vista Noche', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/335527810.jpg?k=a395dd356b023e20c7d0fb98ff8a16915cbd1e78c172ae3bb998dc69d54e585f&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Fachada Día', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/335451305.jpg?k=36cb4cf874373610e7e0262a3a971788ef8067daec20e0748c25e8f5efd12498&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Fachada Día', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/350554568.jpg?k=b9132ffc7fb378911db517542b0a996e4b9c66d00e91baa5328cbad9495dfa87&o=&hp=1', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Fachada Alternativa', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/350554568.jpg?k=b9132ffc7fb378911db517542b0a996e4b9c66d00e91baa5328cbad9495dfa87&o=&hp=1', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Jacuzzi Jardín', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/350533250.jpg?k=7dcf4f605e524c324decfaab04eaf754bbcaaba6d94112b3e8ab87cf1f0fc9cd&o=&hp=1', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Habitación Vista Jardín', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/350533256.jpg?k=c7d9ec43b585ee05cbecc6410f7ae50aa9db1348c0a1e42b471c875f83ed2f9a&o=&hp=1', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Vista Exterior', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/480380581.jpg?k=b426aa090bb222c2d3576a34f6375001fc1fcd364e15033d23924e9ee86e0b52&o=&hp=1', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Habitación Panorámica', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/501078994.jpg?k=cd9d2bc80662ba74f31b5e14450687649ce3f01ff298c2c3a26b4cdf5336b8f6&o=&hp=1', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Interior Noche', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/484446187.jpg?k=8a8f343d59c82f3f99aaabcdc277b142c36e036b3f06ababf2e643fe4f0764b3&o=&hp=1', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Alojamiento Vista Bosque', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/492793809.jpg?k=19c5f6cdb41144b885991355754f5c5ea32a3807bc913d6b3cbeb2dd37b086de&o=&hp=1', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Área Común Exterior', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/480380610.jpg?k=2a0cbff9d3a7d3932c382fd6d40848040e1eaf836b563183bf2ef3f6075af235&o=&hp=1', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Piscina Natural', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/352113290.jpg?k=90ea5ea7776e1947fb2104cc5f0e103f0ec78ba7c7dca50550a2af8220ccb9e0&o=', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/352113272.jpg?k=262cd5417fe88ab63ba8feb013bcbbc91b2705e14aae36c958f9d57d0560d066&o=&hp=1', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Terraza', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/352113293.jpg?k=cda694eb43c186a6e95f91e309df2985a5d9b873ae3269da5447fb08b41c3af8&o=&hp=1', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Área Común', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/352132943.jpg?k=ba6cf1e1541c4a72e198b6654b889767e50cd664e41d149ad8ce17be283ea2c0&o=&hp=1', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Cabaña Vista', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/524581888.jpg?k=849ed1b40bef8caafdfcc84a02f9ed527c064b717902bc69e4c73427aead9daa&o=&hp=1', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Cocina al Aire Libre', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/352113284.jpg?k=1ba9fe23f2d31bc006f38bc2a7dc857e1f37a92e955c2d1b113c28aa85ee25f4&o=&hp=1', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Vista Exterior', 'https://1.bp.blogspot.com/-ZTVhu7CawkQ/YZLl0rHU6XI/AAAAAAAAIi4/h8w-78j-aBktsdEopdAO7dV7vUxpuw6ZgCLcBGAsYHQ/s1440/242553153_114339490989452_4452964244461065830_n.jpg', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Mirador', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/fb/a7/5c/caption.jpg?w=900&h=500&s=1', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Cabaña Principal', 'https://www.hotelessancarlos.org.co/wp-content/uploads/2023/09/IMG-20230116-WA0060.jpg', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Paisaje Natural', 'https://th.bing.com/th/id/OIP.rvXVOY59wmMR7JFaVndj5gHaE8?rs=1&pid=ImgDetMain', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Vista Nocturna', 'https://www.hotelessancarlos.org.co/wp-content/uploads/2023/09/IMG-20221025-WA0037.jpg', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('Flor del Monte Piscina Principal', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/544889263.jpg?k=08a8d1ff61b5602d628d0e057301514db32a0a34721a566790b5c94a0a610623&o=&hp=1', 19);

INSERT INTO images (title, url, id_product)
  VALUES ('Flor del Monte Zona Verde', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/544889277.jpg?k=9d6f9ed0b255f5e63afdd77fbf824e7d4d456c26febd7a8ff8772051a9d7a215&o=&hp=1', 19);

INSERT INTO images (title, url, id_product)
  VALUES ('Flor del Monte Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/544889235.jpg?k=aa923576c0fd182aa5da7e3af1c9181b14f5ec2d6ca6b92f5a965e6776bf9b59&o=&hp=1', 19);

INSERT INTO images (title, url, id_product)
  VALUES ('Flor del Monte Vista General', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/544889271.jpg?k=e15fa05f2de1b988dc0c22567ee0b421b474cccdb5a8f10505bc8732d94f6a75&o=&hp=1', 19);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Vista General', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/457216177.jpg?k=9ae8bf04077993531772f6d3837fe59f1333eef8e70c17dfb439a74e3c9a7628&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Exterior con Jardín', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/408570326.jpg?k=3384f9a7e7b9c44b172dc4b1a79aafeb9e1a63a4d03f97e5a76a7a830ff86d9b&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Noche', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/407477718.jpg?k=b7dcd65674710437063e318c5d18af8cf7ee1d98b2ce29b6232c0910e90b2cea&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Interiores', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/408561711.jpg?k=12691cc89fecb6cc37e83a4a5e3ec9d6e85d01185993752bcc1e84c8ae218c13&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Sala con Vista', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/408561676.jpg?k=270ccd17992d6af13ae95dcc44f7b5dc7bb6cdc042f93522553d2ec3c8c59d8f&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/428535443.jpg?k=23955c93217f296807f76832be611258285bc547b6cbfc56429037721e8518b9&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Vista Principal', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/380182670.jpg?k=20bccdbee947c9762ac06654912de2cca410b96ca4233518a99dc071523f42a4&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Vista Piscina', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/643080105.jpg?k=4ffc732e50b086e9350efd6c19f27d041d40f3874e504015f3475016140ee800&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Interior Habitación', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/380182663.jpg?k=dcfbbabee4d7506e9bba96e17034c9829e9759cb940464d71984bb439ce3978a&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Piscina Nocturna', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/643080106.jpg?k=07d200674ca8a710302bdd8a6ed9483c6c5a7ddc9d06485637f5ea797bd5b838&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Vista Jardín', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/643080114.jpg?k=d2e2c0b4d09c48cb0a774e08076fe5408644b17da57ac87133114cc93fade445&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/380182657.jpg?k=444e0d42b0b2f95b6de05dd16a6a8258e706d4ae9a5b77e0fd99b4188b334534&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Vista Jardín', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/526471868.jpg?k=1870fb2c0b3db587f3763f2e06aaeb1d570ef0585ca5a303d5ec72456af00eb7&o=', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Exterior', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/526471741.jpg?k=7fc9c2537790ec4ab0c0c552e13fcf64f8724f854d509b4e2577e69a07a224b7&o=&hp=1', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Cabaña Jacuzzi', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/597593440.jpg?k=7aa5398b0bfb8f6c292bd1132dcfb79c7a7999b96b2d0ecac76e733e5b06ca44&o=&hp=1', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Interior', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/530631970.jpg?k=4f80862ce4bc0fd7f8647af70007d42c15e794791f6f761fe267bd802ffebe14&o=&hp=1', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Balcón', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/526742778.jpg?k=3e1d9cbf7679315ffb7ab404fed3974b9772b2bc6ee498b575599fde3ce48639&o=&hp=1', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Habitación', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/526471852.jpg?k=abbe73c5eb9302460341c9f5740d32c1f15180fb70670d8b38410450a244555c&o=&hp=1', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Fachada', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/554583099.jpg?k=16f6166aeb05bf53a35b991781989ce3e5063a11c650ab4441d3d9fb95e1b264&o=', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max500/554265412.jpg?k=662643c8c00d4473538e64878ecaf3b1f03507820a479ae8d1c44a8f28f31aa1&o=', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Habitación', 'https://cf.bstatic.com/xdata/images/hotel/max300/379311593.jpg?k=4a3244cbbabd808df33eea455119549471cb17f0b1909588d1928cad283dd343&o=', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Vista general', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/554265450.jpg?k=d97079dc96d3ef4b23846b6025a5442e0acf88d34242d663df76bbb90fdd4b3c&o=&hp=1', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Jardín', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/554583341.jpg?k=4f9707b030445afb63d44d7a1b3bf80bdb8a8ea622f1fed004f97afaad1b97f7&o=&hp=1', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Zona común', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/554583349.jpg?k=0a9ad63714718385338eadb29c1835017c35ca041c948bd1087086139d3cb2d5&o=&hp=1', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Exteriores', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/554265486.jpg?k=96cd1673d4af8c3bf3f12352749f2b5e242392d17078b77646381dee7cf4f26d&o=&hp=1', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería El Paraíso Fachada', 'https://img.restaurantguru.com/c35c-Hosteria-El-Paraiso-Jardin-Antioquia-facade-2.jpg', 24);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería El Paraíso Restaurante', 'https://img.restaurantguru.com/c616-Restaurant-Hosteria-El-Paraiso-Jardin-Antioquia-picture.jpg', 24);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería El Paraíso Comida', 'https://img.restaurantguru.com/c3c2-Restaurant-Hosteria-El-Paraiso-Jardin-Antioquia-meals.jpg', 24);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Tonusco Campestre Vista General', 'https://www.kayak.com.co/rimg/himg/36/5b/c8/expedia_group-2571840-189958700-668432.jpg?width=968&height=607&crop=true', 25);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Tonusco Campestre Piscina', 'https://www.kayak.com.co/rimg/himg/02/ef/94/expedia_group-2571840-c08042-520999.jpg?width=968&height=607&crop=true', 25);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Tonusco Campestre Habitación', 'https://www.kayak.com.co/rimg/himg/f9/58/83/expedia_group-2571840-d931e6-493529.jpg?width=968&height=607&crop=true', 25);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Puerta del Nus Fachada', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/463205301.jpg?k=93065034ed360d3993fe5836f3ed66c1329652e62080378104db67e43c1c7534&o=', 26);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Puerta del Nus Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/451825385.webp?k=1d9263a4fcf27febc462ab9a4375eba89ad494b689f33258764640ae3678fc9e&o=', 26);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Puerta del Nus Piscina', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/545031108.jpg?k=ead6117f809505dd4f23e02376a0367b2d8c38801c4c6822af6bbc06fe3b47e4&o=&hp=1', 26);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Puerta del Nus Zonas Verdes', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/447065600.jpg?k=077539dd62b3b30f191fc139a0a7e03f129371f6d7f7482ea3341c5b7d27ab0d&o=&hp=1', 26);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería La Medusa Fachada', 'https://www.kayak.com.co/rimg/himg/8b/02/dd/expedia_group-10248927-193555586-258766.jpg?width=836&height=607&crop=true', 27);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería La Medusa Piscina', 'https://www.kayak.com.co/rimg/himg/2a/0e/bb/expedia_group-10248927-128572495-206077.jpg?width=836&height=607&crop=true', 27);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería La Medusa Zonas Verdes', 'https://www.kayak.com.co/rimg/himg/f4/e6/9b/expedia_group-10248927-73084817-317431.jpg?width=836&height=607&crop=true', 27);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería La Medusa Entrada Principal', 'https://www.kayak.com.co/rimg/himg/09/ac/fd/expedia_group-10248927-255388246-346453.jpg?width=836&height=607&crop=true', 27);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Exterior', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/404386053.jpg?k=af8369df04b8c171506239620a66d8a7a2c7ff3f36cf036b30cb89a58adf2cf0&o=&hp=1', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/506586967.jpg?k=ec2bc27bfaf21f802e1ed296f5195330be342550f0fb6d1e4ffb13177fd344d7&o=&hp=1', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Jardines', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/404386073.jpg?k=524ed66ce20da857f2b0360bc9f1cfe06609cade9ade51009054742ab231f8b1&o=&hp=1', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Habitación', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/406432101.jpg?k=6353d9757b39899a1e08fcb4ee08d676af02673653cbc24969186c65957c2d92&o=&hp=1', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Piscina', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/406432102.jpg?k=f946bb13af614bd6d425345a34f7db2d7aa31bc060cceaf72c84e151be788470&o=&hp=1', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Instalaciones', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/506586611.jpg?k=bafcd72d2e1f69d4e757f44eb47c335d0ab3830de2ae47dc0e4b729f056974a8&o=&hp=1', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Vista General', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/506586984.jpg?k=e9397d2c2c07053c4702a85961e037c855854d6569e2e01972cb4291c0c0b725&o=&hp=1', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Villa Jardín Fachada', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/634923793.jpg?k=ca6ed5a35e098515f4f9c41b27a66dad2092455690830a3f8008e49c555b9e85&o=', 29);

INSERT INTO images (title, url, id_product)
  VALUES ('Villa Jardín Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max500/634923413.jpg?k=e4f886a970b3d662071eda7c6b527f4e9ef716427fa5cc2877ba6bf441c33460&o=', 29);

INSERT INTO images (title, url, id_product)
  VALUES ('Villa Jardín Vista Interna', 'https://cf.bstatic.com/xdata/images/hotel/max300/513933385.jpg?k=8fa7c0bff1f514e04c9cf38d4485934812cdf3a0afcd9d02218b589e876e04cc&o=', 29);

INSERT INTO images (title, url, id_product)
  VALUES ('Villa Jardín Piscina Nocturna', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/634923939.jpg?k=986468f973a44125bb984eb983b25d66fc7754afde6b98e5d422c6b2a0a376fa&o=&hp=1', 29);

INSERT INTO images (title, url, id_product)
  VALUES ('Villa Jardín Interior General', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/634923705.jpg?k=cfc53fb1ccf49aa4930000bdffc1960f719b8c8dba3433bb021a78bd98f857cc&o=&hp=1', 29);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa en las Montañas Sala', 'https://a0.muscache.com/im/pictures/miso/Hosting-21527257/original/2412ce0f-2d5c-486c-9c7c-56b1ebc4e7db.png?im_w=1200', 30);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa en las Montañas Comedor', 'https://a0.muscache.com/im/pictures/miso/Hosting-21527257/original/debfcba7-865c-49c2-ae3b-5fa7db977f1f.png?im_w=720', 30);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa en las Montañas Dormitorio', 'https://a0.muscache.com/im/pictures/miso/Hosting-21527257/original/30117c97-62d2-438f-a468-ff4d42b2efec.jpeg?im_w=1200', 30);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa en las Montañas Jardín', 'https://a0.muscache.com/im/pictures/ae518bf2-5b6e-4f3a-b12b-b7c49e310775.jpg?im_w=720', 30);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa en las Montañas Cocina', 'https://a0.muscache.com/im/pictures/miso/Hosting-21527257/original/d25ef966-6ec8-48aa-8c6e-adec472b558f.png?im_w=720', 30);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Naya Fachada', 'https://a0.muscache.com/im/pictures/hosting/Hosting-U3RheVN1cHBseUxpc3Rpbmc6NDI0MDg5MjE=/original/29d33ef8-4c36-44ac-bd4e-8d824a6bf231.jpeg?im_w=720', 31);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Naya Vista Panorámica', 'https://a0.muscache.com/im/pictures/hosting/Hosting-U3RheVN1cHBseUxpc3Rpbmc6NDI0MDg5MjE=/original/6fe696bc-42e2-489e-b41b-da983565005c.jpeg?im_w=1200', 31);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Naya Sala', 'https://a0.muscache.com/im/pictures/c0243d0a-2f1b-454d-9532-6783931ab794.jpg?im_w=1200', 31);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Naya Comedor', 'https://a0.muscache.com/im/pictures/miso/Hosting-42408921/original/6b71cb50-4aab-48c6-919e-dddc7375ec9d.jpeg?im_w=1200', 31);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Naya Jardín', 'https://a0.muscache.com/im/pictures/acdde957-bd95-46d5-95f3-db97eb56699a.jpg?im_w=240', 31);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Colonial Santa Fe Fachada', 'https://a0.muscache.com/im/pictures/miso/Hosting-1063889573195406074/original/02faf4e7-6459-4ba5-a435-b1530f16a26b.jpeg?im_w=720', 32);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Colonial Santa Fe Piscina', 'https://a0.muscache.com/im/pictures/miso/Hosting-1063889573195406074/original/51ac597c-38e5-4f0f-bc38-6c92183a23a1.jpeg?im_w=240', 32);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Colonial Santa Fe Cocina', 'https://a0.muscache.com/im/pictures/hosting/Hosting-1063889573195406074/original/1b7aa123-04f5-400b-8644-03d8fabc6295.jpeg?im_w=480', 32);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Colonial Santa Fe Comedor', 'https://a0.muscache.com/im/pictures/miso/Hosting-1063889573195406074/original/ed279e05-e51b-40cd-82f3-3315c0d6fc52.jpeg?im_w=240', 32);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Colonial Santa Fe Habitación', 'https://a0.muscache.com/im/pictures/miso/Hosting-1063889573195406074/original/37e731fc-b0aa-4d75-9327-bf4c4b4c4b39.jpeg?im_w=240', 32);

INSERT INTO images (title, url, id_product)
  VALUES ('Condominio El Carmen Sala Principal', 'https://a0.muscache.com/im/pictures/miso/Hosting-856029785250558552/original/25d1390b-8b36-4ffe-b127-40ac47a2fd1d.jpeg?im_w=1200', 33);

INSERT INTO images (title, url, id_product)
  VALUES ('Condominio El Carmen Cocina Comedor', 'https://a0.muscache.com/im/pictures/miso/Hosting-856029785250558552/original/d6e1d748-c8cb-4df6-bf83-28205dcbb152.jpeg?im_w=720', 33);

INSERT INTO images (title, url, id_product)
  VALUES ('Condominio El Carmen Habitación Principal', 'https://a0.muscache.com/im/pictures/miso/Hosting-856029785250558552/original/241d6514-898e-464b-925d-bbc30e980607.jpeg?im_w=720', 33);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Finca Marinilla Fachada Principal', 'https://a0.muscache.com/im/pictures/miso/Hosting-1131970783367841428/original/b0a0b9ed-cf36-4493-b7d1-dde10d1b6994.jpeg?im_w=1200', 34);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Finca Marinilla Jardín con Vista', 'https://a0.muscache.com/im/pictures/miso/Hosting-1131970783367841428/original/48bf35b9-3dcc-4507-95a6-164fab9b164d.jpeg?im_w=720', 34);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Finca Marinilla Sala Rústica', 'https://a0.muscache.com/im/pictures/hosting/Hosting-1131970783367841428/original/2914cbd9-fbbe-4b23-8ab4-5f170ab81bc2.jpeg?im_w=240', 34);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Finca Marinilla Cocina Campestre', 'https://a0.muscache.com/im/pictures/miso/Hosting-1131970783367841428/original/4d575bb0-7e86-46ca-a3a4-876c36f931a9.jpeg?im_w=240', 34);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Finca Marinilla Zona de Comedor', 'https://a0.muscache.com/im/pictures/miso/Hosting-1131970783367841428/original/26346a24-3214-48b0-aa31-390d497c949f.jpeg?im_w=240', 34);

-- ============================
--  POBLAR TABLA PRODUCTS_HAS_FEATURES
-- ============================


-- Hotel Los Recuerdos (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 1); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 1); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 1); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 1); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 1); -- Estacionamiento gratuito
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 1); -- Lavadero

-- Hotel Hacienda Balandú (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 2); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 2); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 2); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 2); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 2); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 2); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 2); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 2); -- Estacionamiento gratuito

-- Hotel San Ángel (3 estrellas) - 4 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 3); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 3); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 3); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 3); -- Estacionamiento gratuito

-- Hotel Cauca Viejo Fundadores (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 4); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 4); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 4); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 4); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 4); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 4); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 4); -- Estacionamiento gratuito

-- Hotel Las Lomas (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 5); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 5); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 5); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 5); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 5); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 5); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 5); -- Estacionamiento gratuito

-- Hotel San Rafael (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 6); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 6); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 6); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 6); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 6); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 6); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 6); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 6); -- Estacionamiento gratuito

-- Hotel El Mirador (2 estrellas) - 3 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 7); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 7); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 7); -- Estacionamiento gratuito

-- Hotel Del Trópico (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 8); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 8); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 8); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 8); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 8); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 8); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 8); -- Estacionamiento gratuito

-- Hotel del Parque (3 estrellas) - 4 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 9); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 9); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 9); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 9); -- Estacionamiento gratuito

-- Hotel San Roque (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 10); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 10); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 10); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 10); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 10); -- Estacionamiento gratuito
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 10); -- Cocina

-- Levit Glamping (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 11); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 11); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 11); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 11); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 11); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 11); -- Estacionamiento gratuito

-- Glamping Montecarlo Lodge (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 12); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 12); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 12); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 12); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 12); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 12); -- Estacionamiento gratuito

-- Gulupa Ecolodge (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 13); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 13); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 13); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 13); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 13); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 13); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 13); -- Estacionamiento gratuito

-- Nalua Glamping y Hotel (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 14); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 14); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 14); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 14); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 14); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 14); -- Estacionamiento gratuito

-- Glamping Jericó, El Edén (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 15); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 15); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 15); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 15); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 15); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 15); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 15); -- Estacionamiento gratuito

-- Sukha Glamping (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 16); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 16); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 16); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 16); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 16); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 16); -- Estacionamiento gratuito

-- Cabaña Glamping Los Canarios (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 17); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 17); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 17); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 17); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 17); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 17); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 17); -- Estacionamiento gratuito

-- Glamping El Tabor (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 18); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 18); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 18); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 18); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 18); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 18); -- Estacionamiento gratuito

-- Glamping Flor del Monte (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 19); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 19); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 19); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 19); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 19); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 19); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 19); -- Estacionamiento gratuito

-- Madeira Glamping (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 20); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 20); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 20); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 20); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 20); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 20); -- Estacionamiento gratuito

-- Glamping Paraíso (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 21); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 21); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 21); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 21); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 21); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 21); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 21); -- Estacionamiento gratuito

-- El Mirador de San Joaquín (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 22); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 22); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 22); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 22); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 22); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 22); -- Estacionamiento gratuito

-- Hostería El Trébol (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 23); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 23); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 23); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 23); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 23); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 23); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 23); -- Estacionamiento gratuito

-- Hostería El Paraíso Jardín (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 24); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 24); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 24); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 24); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 24); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 24); -- Estacionamiento gratuito

-- Hostería Tonusco Campestre (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 25); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 25); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 25); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 25); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 25); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 25); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 25); -- Estacionamiento gratuito

-- Hostería Puerta del Nus (3 estrellas) - 5 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 26); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 26); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 26); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 26); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 26); -- Estacionamiento gratuito

-- Hostería La Medusa (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 27); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 27); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 27); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 27); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 27); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 27); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 27); -- Estacionamiento gratuito

-- Finca Hotel Ríos Claros (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 28); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 28); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 28); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 28); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 28); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 28); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 28); -- Estacionamiento gratuito

-- Cabaña Villa Jardín (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 29); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 29); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 29); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 29); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 29); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 29); -- Estacionamiento gratuito

-- Alojamiento entero: casa en Barbosa (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 30); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 30); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 30); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 30); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 30); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 30); -- Estacionamiento gratuito

-- Finca Naya - Fredonia (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 31); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 31); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 31); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 31); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 31); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 31); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 31); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 31); -- Estacionamiento gratuito

-- Casa Colonial en Santa Fe de Antioquia (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 32); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 32); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 32); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 32); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 32); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 32); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 32); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 32); -- Estacionamiento gratuito

-- Condominio moderno en El Carmen (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 33); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 33); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 33); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 33); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 33); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 33); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 33); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 33); -- Estacionamiento gratuito

-- Casa Finca en Marinilla (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 34); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 34); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 34); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 34); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 34); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 34); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 34); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 34); -- Estacionamiento gratuito

INSERT INTO roles (name)
  VALUES ('Admin');

INSERT INTO roles (name)
  VALUES ('User');

INSERT INTO users (name, last_name, email, password,role_id)
  VALUES ('Bruno', 'Rodriguez', 'brodriguez@gmail.com', '$2a$12$zGAXSVRkhPwAzVuLhV2sJOQnyNFQxNBVobFlEUFdyer6qZMhpJ/EW',2);

INSERT INTO users (name, last_name, email, password, role_id)
  VALUES ('Laura', 'Ramos', 'lalo@gmail.com', '$2a$12$PAox1AJUWXrPnM.62kICguJk.ppd110tgTAU2lhvX/MD6fx78jQ0e', 1)


  --1234567


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

