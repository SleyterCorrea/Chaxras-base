



CREATE TABLE `categoriainsumo` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------



CREATE TABLE `comprobantes` (
  `id_comprobante` int(11) NOT NULL,
  `id_pago` int(11) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `ruc` varchar(15) DEFAULT NULL,
  `razon_social` varchar(100) DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `asunto` varchar(150) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha_envio` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



CREATE TABLE `detallepedido` (
  `id_detalle` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_plato` int(11) DEFAULT NULL,
  `etapa_servicio` varchar(50) DEFAULT NULL,
  `orden_servicio` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `etapa_servido` varchar(50) DEFAULT 'cocina',
  `estado` enum('pendiente','servido','cancelado') DEFAULT 'pendiente',
  `orden_entrega` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `detallepedido` (`id_detalle`, `id_pedido`, `id_plato`, `etapa_servicio`, `orden_servicio`, `cantidad`, `precio_unitario`, `etapa_servido`, `estado`, `orden_entrega`) VALUES
(190, 0, 1, NULL, NULL, 1, 20.00, 'cocina', 'servido', 1),
(191, 0, 2, NULL, NULL, 1, 18.00, 'cocina', 'servido', 3),
(192, 0, 6, NULL, NULL, 1, 8.00, 'cocina', 'servido', 2),
(193, 2, 1, NULL, NULL, 1, 20.00, 'cocina', 'servido', 1),
(194, 2, 5, NULL, NULL, 1, 42.50, 'cocina', 'servido', 2),
(195, 2, 3, NULL, NULL, 1, 15.00, 'cocina', 'servido', 3),
(196, 3, 1, NULL, NULL, 1, 20.00, 'cocina', 'servido', 1),
(197, 3, 2, NULL, NULL, 1, 18.00, 'cocina', 'servido', 3),
(198, 3, 6, NULL, NULL, 1, 8.00, 'cocina', 'servido', 2),
(199, 4, 1, NULL, NULL, 1, 20.00, 'cocina', 'servido', 1),
(200, 4, 2, NULL, NULL, 1, 18.00, 'cocina', 'servido', 2),
(201, 4, 6, NULL, NULL, 2, 8.00, 'cocina', 'servido', 2),
(202, 5, 1, NULL, NULL, 1, 20.00, 'cocina', 'servido', 1),
(203, 5, 2, NULL, NULL, 1, 18.00, 'cocina', 'servido', 1),
(204, 5, 6, NULL, NULL, 1, 8.00, 'cocina', 'servido', 2),
(205, 6, 4, NULL, NULL, 1, 35.00, 'cocina', 'servido', 1),
(206, 6, 6, NULL, NULL, 1, 8.00, 'cocina', 'servido', 2),
(207, 6, 7, NULL, NULL, 1, 15.00, 'cocina', 'servido', 3),
(208, 7, 2, NULL, NULL, 1, 18.00, 'cocina', 'servido', 1),
(209, 7, 3, NULL, NULL, 1, 15.00, 'cocina', 'servido', 2),
(210, 8, 4, NULL, NULL, 1, 35.00, 'cocina', 'servido', 1),
(211, 8, 5, NULL, NULL, 1, 42.50, 'cocina', 'servido', 1),
(212, 8, 3, NULL, NULL, 1, 15.00, 'cocina', 'servido', 3),
(213, 9, 1, NULL, NULL, 1, 20.00, 'cocina', 'servido', 1),
(214, 9, 5, NULL, NULL, 1, 42.50, 'cocina', 'servido', 2),
(215, 9, 3, NULL, NULL, 1, 15.00, 'cocina', 'servido', 3),
(216, 10, 1, NULL, NULL, 1, 20.00, 'cocina', 'servido', 1),
(217, 10, 2, NULL, NULL, 1, 18.00, 'cocina', 'servido', 1),
(218, 10, 6, NULL, NULL, 1, 8.00, 'cocina', 'servido', 1),
(219, 10, 7, NULL, NULL, 1, 15.00, 'cocina', 'servido', 1),
(220, 11, 1, NULL, NULL, 6, 20.00, 'cocina', 'servido', 1),
(221, 11, 2, NULL, NULL, 1, 18.00, 'cocina', 'servido', 1),
(222, 11, 6, NULL, NULL, 1, 8.00, 'cocina', 'servido', 1),
(223, 11, 7, NULL, NULL, 1, 15.00, 'cocina', 'servido', 1),
(224, 12, 1, NULL, NULL, 1, 20.00, 'cocina', 'servido', 2),
(225, 12, 2, NULL, NULL, 1, 18.00, 'cocina', 'servido', 3),
(226, 12, 6, NULL, NULL, 1, 8.00, 'cocina', 'servido', 1),
(227, 13, 4, NULL, NULL, 1, 35.00, 'cocina', 'servido', 1),
(228, 13, 2, NULL, NULL, 1, 18.00, 'cocina', 'servido', 2),
(229, 13, 6, NULL, NULL, 1, 8.00, 'cocina', 'servido', 3),
(230, 14, 8, NULL, NULL, 1, 5.00, 'cocina', 'servido', 2),
(231, 14, 2, NULL, NULL, 1, 18.00, 'cocina', 'servido', 1),
(232, 14, 25, NULL, NULL, 1, 8.00, 'cocina', 'servido', 3),
(233, 14, 30, NULL, NULL, 1, 7.00, 'cocina', 'servido', 1),
(234, 15, 1, NULL, NULL, 1, 20.00, 'cocina', 'pendiente', 2),
(235, 15, 4, NULL, NULL, 1, 35.00, 'cocina', 'pendiente', 2),
(236, 15, 2, NULL, NULL, 1, 18.00, 'cocina', 'pendiente', 3),
(237, 15, 27, NULL, NULL, 1, 55.00, 'cocina', 'pendiente', 3),
(238, 15, 6, NULL, NULL, 1, 8.00, 'cocina', 'pendiente', 1),
(239, 15, 17, NULL, NULL, 1, 5.00, 'cocina', 'pendiente', 1),
(240, 16, 1, NULL, NULL, 1, 20.00, 'cocina', 'pendiente', 1),
(241, 16, 4, NULL, NULL, 1, 35.00, 'cocina', 'pendiente', 1),
(242, 16, 20, NULL, NULL, 1, 30.00, 'cocina', 'pendiente', 1),
(243, 16, 3, NULL, NULL, 1, 15.00, 'cocina', 'pendiente', 1),
(244, 16, 6, NULL, NULL, 1, 8.00, 'cocina', 'pendiente', 1),
(245, 16, 7, NULL, NULL, 1, 15.00, 'cocina', 'pendiente', 1),
(246, 16, 29, NULL, NULL, 1, 10.00, 'cocina', 'pendiente', 1),
(247, 17, 1, NULL, NULL, 1, 20.00, 'cocina', 'servido', 2),
(248, 17, 24, NULL, NULL, 1, 5.00, 'cocina', 'servido', 1);



CREATE TABLE `egresos` (
  `id_egreso` int(11) NOT NULL,
  `id_reporte` int(11) DEFAULT NULL,
  `motivo` text DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `egresos` (`id_egreso`, `id_reporte`, `motivo`, `monto`, `fecha`) VALUES
(1, NULL, 'Compra de insumo: Maiz', 20.00, '2025-06-16'),
(2, NULL, 'Compra de insumo: Pollo', 20.00, '2025-06-17'),
(3, NULL, 'TELE ROTA', 300.00, '2025-07-25'),
(4, NULL, 'Compra de insumo: Tomate', 10.00, '2025-07-24'),
(5, NULL, 'Compra de insumo: Pollo', 20.00, '2025-07-24');



CREATE TABLE `estadoreserva` (
  `id_estado_reserva` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `feriados` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `feriados` (`id`, `fecha`, `descripcion`) VALUES
(1, '2025-04-17', 'Jueves Santo'),
(2, '2025-04-18', 'Viernes Santo'),
(3, '2026-01-01', 'Año Nuevo'),
(4, '2025-12-25', 'Navidad');



CREATE TABLE `gruposclientes` (
  `id_grupo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



INSERT INTO `gruposclientes` (`id_grupo`, `nombre`, `descripcion`) VALUES
(1, 'clientenuevo', NULL),
(2, 'clientefrecuente', NULL),
(3, 'clientevip', NULL);



CREATE TABLE `ingresos` (
  `id_ingreso` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_reserva` int(11) DEFAULT NULL,
  `id_reporte` int(11) DEFAULT NULL,
  `fuente` varchar(50) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `ingresos` (`id_ingreso`, `id_pedido`, `id_reserva`, `id_reporte`, `fuente`, `monto`, `descripcion`, `fecha`) VALUES
(1, NULL, NULL, NULL, 'Venta', 77.50, 'Ingreso por pedido confirmado', '2025-07-22'),
(2, NULL, NULL, NULL, 'Venta', 61.00, 'Ingreso por pedido confirmado', '2025-07-22'),
(3, NULL, NULL, NULL, 'Venta', 161.00, 'Ingreso por pedido confirmado', '2025-07-22'),
(4, NULL, NULL, NULL, 'Venta', 46.00, 'Ingreso por pedido confirmado', '2025-07-23'),
(5, NULL, NULL, NULL, 'Venta', 61.00, 'Ingreso por pedido confirmado', '2025-07-23'),
(6, NULL, NULL, NULL, 'Propina', 30.00, 'Un cliente regaló 30 soles ', '2025-07-26'),
(7, NULL, NULL, NULL, 'Propina2', 30.00, 'Cliente regaló propina a cocineros', '2025-07-25'),
(8, NULL, NULL, NULL, 'Propina3', 50.00, 'Propina ', '2025-07-25'),
(9, NULL, NULL, NULL, 'Propina4', 15.00, 'Propinas', '2025-07-24');



CREATE TABLE `insumos` (
  `id_insumo` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `insumos` (`id_insumo`, `id_categoria`, `nombre`, `unidad`, `estado`) VALUES
(1, NULL, 'Arroz', 'kg', 'activo'),
(2, NULL, 'Tomate', 'Kg', 'activo'),
(3, NULL, 'Pollo', 'kg', 'activo'),
(5, NULL, 'Maiz', 'Kg', 'activo');



CREATE TABLE `lotes_insumo` (
  `id_lote` int(11) NOT NULL,
  `id_insumo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `costo_total` decimal(10,2) NOT NULL,
  `fecha_ingreso` datetime DEFAULT current_timestamp(),
  `fecha_estimado_termino` date DEFAULT NULL,
  `estado` varchar(20) DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `lotes_insumo` (`id_lote`, `id_insumo`, `cantidad`, `costo_total`, `fecha_ingreso`, `fecha_estimado_termino`, `estado`) VALUES
(1, 1, 50, 40.00, '2025-06-15 20:48:12', '2025-06-14', 'inactivo'),
(2, 2, 50, 60.00, '2025-06-15 22:20:09', '2025-06-21', 'activo'),
(3, 3, 10, 50.00, '2025-06-15 23:27:42', '2025-06-23', 'inactivo'),
(4, 1, 60, 90.00, '2025-06-15 23:28:39', '2025-06-17', 'activo'),
(5, 5, 30, 20.00, '2025-06-16 01:05:32', '2025-06-21', 'activo'),
(6, 3, 30, 20.00, '2025-06-17 03:02:45', '2025-07-01', 'activo'),
(7, 5, 20, 30.00, NULL, NULL, 'activo'),
(8, 3, 10, 20.00, NULL, NULL, 'activo'),
(9, 2, 5, 10.00, '2025-07-24 00:00:00', '2025-07-27', 'activo'),
(10, 3, 20, 20.00, '2025-07-24 00:00:00', '2025-07-31', 'activo');



CREATE TABLE `mesas` (
  `id_mesa` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `estado` varchar(20) DEFAULT 'disponible'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `mesas` (`id_mesa`, `nombre`, `estado`) VALUES
(1, 'Mesa 1', 'ocupada'),
(2, 'Mesa 2', 'ocupada'),
(3, 'Mesa 3', 'ocupada'),
(4, 'Mesa 4', 'ocupada'),
(5, 'Mesa 5', 'disponible'),
(6, 'Mesa 6', 'disponible'),
(7, 'Mesa 7', 'disponible'),
(8, 'Mesa 8', 'disponible'),
(9, 'Mesa 9', 'disponible'),
(10, 'Mesa 10', 'disponible');



CREATE TABLE `movimientoinsumos` (
  `id_movimiento` int(11) NOT NULL,
  `id_egreso` int(11) DEFAULT NULL,
  `id_insumo` int(11) DEFAULT NULL,
  `tipo` enum('entrada','salida') NOT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `movimientoinsumos` (`id_movimiento`, `id_egreso`, `id_insumo`, `tipo`, `cantidad`, `fecha`, `descripcion`) VALUES
(1, NULL, 1, 'entrada', 50.00, NULL, 'Arroz para cocinar'),
(2, NULL, 1, 'salida', 30.00, NULL, 'Vender'),
(3, NULL, 2, 'entrada', 60.00, NULL, 'Tomates para sanguches'),
(4, NULL, 2, 'salida', 20.00, NULL, 'Pa la cocina'),
(5, NULL, 3, 'entrada', 10.00, NULL, 'Pollo para arroz con pollo'),
(6, NULL, 3, 'salida', 5.00, NULL, 'Comer'),
(7, NULL, 5, 'entrada', 50.00, NULL, 'Maiz para cocina'),
(8, NULL, 5, 'salida', 30.00, NULL, ''),
(9, NULL, 1, 'salida', 30.00, '2025-07-17', 'Hola'),
(10, NULL, 1, 'entrada', 10.00, '2025-07-24', 'Se quemó');



CREATE TABLE `niveles` (
  `id_nivel` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



INSERT INTO `niveles` (`id_nivel`, `nombre`, `descripcion`) VALUES
(1, 'Admin', 'Acceso total'),
(2, 'RRHH', 'Gestión de trabajadores'),
(3, 'Cocina', 'Gestión de pedidos en cocina'),
(4, 'Mesero', 'Creación de pedidos y seguimiento'),
(5, 'Inventario', 'Gestión de insumos y stock'),
(6, 'Finanzas', 'Gestión de ingresos, egresos y reportes');



CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_mesero` int(11) DEFAULT NULL,
  `id_trabajador` int(11) DEFAULT NULL,
  `id_mesa` int(11) DEFAULT NULL,
  `mesa` varchar(20) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `estado_pedido` enum('pendiente','en_proceso','servido','completado') DEFAULT 'pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `pedidos` (`id_pedido`, `id_mesero`, `id_trabajador`, `id_mesa`, `mesa`, `fecha`, `estado`, `total`, `estado_pedido`) VALUES
(4, NULL, 12, 1, NULL, '2025-07-22', 'finalizado', NULL, 'pendiente'),
(5, NULL, 12, 1, NULL, '2025-07-22', 'finalizado', NULL, 'pendiente'),
(6, NULL, 12, 2, NULL, '2025-07-22', 'finalizado', NULL, 'pendiente'),
(7, NULL, 12, 4, NULL, '2025-07-22', 'finalizado', NULL, 'pendiente'),
(8, NULL, 12, 10, NULL, '2025-07-22', 'finalizado', NULL, 'pendiente'),
(9, NULL, 12, 3, NULL, '2025-07-22', 'finalizado', NULL, 'pendiente'),
(10, NULL, 12, 1, NULL, '2025-07-22', 'finalizado', NULL, 'pendiente'),
(11, NULL, 12, 5, NULL, '2025-07-22', 'finalizado', NULL, 'pendiente'),
(12, NULL, 12, 1, NULL, '2025-07-23', 'finalizado', NULL, 'pendiente'),
(13, NULL, 12, 2, NULL, '2025-07-23', 'finalizado', NULL, 'pendiente'),
(14, NULL, 12, 1, NULL, '2025-07-24', 'completado', NULL, 'pendiente'),
(15, NULL, 12, 2, NULL, '2025-07-24', 'pendiente', NULL, 'pendiente'),
(16, NULL, 12, 3, NULL, '2025-07-24', 'pendiente', NULL, 'pendiente'),
(17, NULL, 12, 4, NULL, '2025-07-24', 'completado', NULL, 'pendiente');



CREATE TABLE `platos` (
  `id_plato` int(11) NOT NULL,
  `id_tipo_plato` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `platos` (`id_plato`, `id_tipo_plato`, `nombre`, `categoria`, `descripcion`, `precio`, `estado`, `imagen`) VALUES
(1, 1, 'Ceviche', NULL, NULL, 20.00, 'activo', '/assets/img/platos/plato_6875faefa95ce.jpg'),
(2, 2, 'Arroz con pollo', NULL, NULL, 18.00, 'activo', '/assets/img/platos/plato_6875fb46d9bcd.jpg'),
(3, 3, 'Sopa criolla', NULL, NULL, 15.00, 'activo', '/assets/img/platos/plato_6875fa8774a11.jpg'),
(4, 1, 'Ceviche mixto', NULL, NULL, 35.00, 'activo', '/assets/img/platos/plato_6875fb1d21daf.jpg'),
(5, 2, 'Lomo saltado', NULL, NULL, 42.50, 'activo', '/assets/img/platos/plato_6875fb9f27751.jpg'),
(6, 3, 'Chicha morada', NULL, NULL, 8.00, 'activo', '/assets/img/platos/plato_6875f751aef79.jpg'),
(7, 4, 'Suspiro a la limeña', NULL, NULL, 15.00, 'activo', '/assets/img/platos/plato_6875fbc8d8f1e.jpg'),
(8, 1, 'asda', NULL, NULL, 5.00, 'activo', '/assets/img/platos/plato_6881ce06587b7.jpg'),
(9, 2, 'Alitas a la bbq', NULL, NULL, 30.00, 'activo', '/assets/img/platos/plato_6881ce5aa5e22.jpg'),
(10, 2, 'Pollo al Horno', NULL, NULL, 60.00, 'activo', '/assets/img/platos/plato_6881cf0eda2d3.jpg'),
(11, 1, 'Sopa Criolla', NULL, NULL, 25.00, 'activo', '/assets/img/platos/plato_6881d389b813f.jpg'),
(12, 2, 'SecoRez', NULL, NULL, 50.00, 'activo', '/assets/img/platos/plato_6881d487003f1.jpg'),
(13, 2, 'Pollo a la Braza', NULL, NULL, 80.00, 'activo', '/assets/img/platos/plato_6881d534c4e06.jpg'),
(14, 2, 'Espagueti', NULL, NULL, 37.00, 'activo', '/assets/img/platos/plato_6881d5652cc9a.jpg'),
(15, 2, 'Lazaña', NULL, NULL, 40.00, 'activo', '/assets/img/platos/plato_6881d58f2115a.jpg'),
(16, 2, 'Cabrito Norteño', NULL, NULL, 45.00, 'activo', '/assets/img/platos/plato_6881d735e0cbc.jpg'),
(17, 3, 'Sprite Personal', NULL, NULL, 5.00, 'activo', '/assets/img/platos/plato_6881d79e23fa1.jpg'),
(18, 3, 'Pisco Macerado de mango', NULL, NULL, 90.00, 'activo', '/assets/img/platos/plato_6881dcac4b3c0.jpg'),
(19, 3, 'Pisco Macerado de uva', NULL, NULL, 90.00, 'activo', '/assets/img/platos/plato_6881d9b723946.jpg'),
(20, 1, 'Ensalada', NULL, NULL, 30.00, 'activo', '/assets/img/platos/plato_6881d9d8effb8.jpg'),
(21, 1, 'Tubérculos fritos', NULL, NULL, 30.00, 'activo', '/assets/img/platos/plato_6881d9fe9507f.jpg'),
(22, 3, 'Inka Cola Personal', NULL, NULL, 6.00, 'activo', '/assets/img/platos/plato_6881da51e3889.jpg'),
(23, 3, 'Coca Cola', NULL, NULL, 6.00, 'activo', '/assets/img/platos/plato_6881da67f2424.jpg'),
(24, 3, 'Fanta', NULL, NULL, 5.00, 'activo', '/assets/img/platos/plato_6881da7962952.jpg'),
(25, 3, 'Cerveza Cusqueña (1 Botella)', NULL, NULL, 8.00, 'activo', '/assets/img/platos/plato_6881daaed0cbb.jpg'),
(26, 3, 'Cerveza Pilsen (1 Botella)', NULL, NULL, 8.00, 'activo', '/assets/img/platos/plato_6881dae3813ca.jpg'),
(27, 2, 'Chicharron de chancho', NULL, NULL, 55.00, 'activo', '/assets/img/platos/plato_6881db26d1483.jpg'),
(28, 4, 'Mazamorra con Leche', NULL, NULL, 20.00, 'activo', '/assets/img/platos/plato_6881db6d3fd21.jpg'),
(29, 4, 'Picarones', NULL, NULL, 10.00, 'activo', '/assets/img/platos/plato_6881db7e9339d.jpg'),
(30, 4, 'Helado', NULL, NULL, 7.00, 'activo', '/assets/img/platos/plato_6881dbcb6244d.jpg');



CREATE TABLE `promociones` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(30) NOT NULL COMMENT 'p.ej. NEW, FREQ, VIP',
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `beneficios` text DEFAULT NULL,
  `precio_mensual` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'solo para VIP',
  `creado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;



INSERT INTO `promociones` (`id`, `codigo`, `nombre`, `descripcion`, `beneficios`, `precio_mensual`, `creado_en`) VALUES
(1, 'NEW', 'Cliente Nuevo', 'Promoción para quien ingresa por primera vez.', '• 10% de descuento en tu primera compra física de eco productos (granola, miel, infusiones, etc).\n\n• Bebida de cortesía en tu primera visita al restaurante.\n\n• Acceso gratuito al “Recorrido del Huerto” el día de su visita (actividad guiada que normalmente tendría costo o sería exclusiva).', 0.00, '2025-07-21 13:03:34'),
(2, 'FREQ', 'Cliente Frecuente', 'Promoción para quienes tienen 10 o más reservas.', '• 25% de descuento en la segunda compra física de eco productos\n• 1 almuerzo al 50% de descuento cada 3 visitas al restaurante.\n• Acceso anticipado a lanzamientos de productos: Sé de los primeros en conocer y comprar nuevos eco productos antes de que lleguen al público general.\n• Eco bolsa reutilizable de regalo', 0.00, '2025-07-21 13:03:34'),
(3, 'VIP', 'Cliente VIP', 'Suscripción mensual VIP con beneficios exclusivos.', '• Set exclusivo de eco productos en edición limitada\n• 20% de descuento permanente en eco productos y acceso exclusivo a la Caja del Mes del Chef.\n• Reserva física prioritaria en mesas con vista al huerto o zona especial del restaurante.\n• Trago o cóctel de autor personalizado con el nombre del cliente (Gratis 1 vez por mes)\n• Comida y bebida gratuita en tu primer evento (Hasta S/. 300 en comida y S/. 200 en bebida)', 30.00, '2025-07-21 13:03:34');



CREATE TABLE `reportes` (
  `id_reporte` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `generado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `id_cliente` int(11) UNSIGNED NOT NULL,
  `codigo_reserva` varchar(10) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `num_personas` int(11) NOT NULL,
  `titular` varchar(255) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `alergias` varchar(255) DEFAULT NULL,
  `celebracion` varchar(255) DEFAULT NULL,
  `requerimientos_adicionales` varchar(255) DEFAULT NULL,
  `estado` varchar(50) NOT NULL DEFAULT 'pendiente',
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



INSERT INTO `roles` (`id_rol`, `nombre`, `descripcion`) VALUES
(1, 'Cliente', 'Usuario externo que realiza reservas'),
(2, 'Trabajador', 'Acceso interno');



CREATE TABLE `slots_bloqueados` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `tipo_plato` (
  `id_tipo_plato` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `tipo_plato` (`id_tipo_plato`, `nombre`) VALUES
(1, 'Entradas'),
(2, 'Plato principal'),
(3, 'Bebidas'),
(4, 'Postres');



CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `id_rol` int(11) NOT NULL,
  `id_nivel` int(11) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;



INSERT INTO `usuarios` (`id_usuario`, `id_grupo`, `id_rol`, `id_nivel`, `nombre`, `correo`, `contrasena`, `google_id`) VALUES
(1, 1, 1, NULL, 'Sleyter Alexander Correa Hurtado', 'sleytercorreahurtado@gmail.com', NULL, '115375424356593496077'),
(6, NULL, 2, 1, 'Administrador Principal', 'admin@chaxras.com', '$2y$10$HujtUg817mK.4gu3uviBnucYS/n40fRnTR1V95A5.8jh34LN4OwVS', NULL),
(7, NULL, 2, 2, 'rrhh', 'rrhh@chaxras.com', '$2y$10$ou0RU1x.l.Pi4lb.Kd4Eku1ANgU22OTW2cy3rhERkHcSXBmddinJK', NULL),
(8, NULL, 2, 3, 'cocinero', 'cocinero@chaxras.com', '$2y$10$kA24h39PWq4GO3l3e1E1oOGJMijKJXbmeopKPBpKBh/TMRcH8konm', NULL),
(9, NULL, 2, 5, 'inventario', 'inventario@chaxras.com', '$2y$10$vIjE0aCuwFNVbsnFPqYBDuU7nOKALtJEU8L6HoENPQy3/IjYn6eAS', NULL),
(11, NULL, 2, 6, 'finanzas', 'finanzas@chaxras.com', '$2y$10$3Q6tbsVfr0H4lwBKI62KJeTaQ8Dcyo8yCr1exJanzjff1pNCVkRBO', NULL),
(12, NULL, 2, 4, 'mesero', 'mesero@chaxras.com', '$2y$10$DKwqwNc5phIu3F6Bqv4DJujYjuIuLRNBcs/40uuV4TlthHdS7zzhW', NULL),
(14, 1, 1, NULL, 'alexander', 'alexander@gmail.com', '$2y$10$mkhIheagpFLPq3NUZyEVT.7sCcx8LjRk71T/2Kj.9Njvmqea3e6zu', NULL),
(15, NULL, 2, 4, 'mesero2', 'mesero2@chaxras.com', '$2y$10$uj071hTmKaWDSzOyqgnh5.beYx5jPT27RSZrusCtjCT8XzSaZNPJ.', NULL),
(16, NULL, 2, 4, 'mesero3', 'mesero3@gchaxras.com', '$2y$10$uQE9n9YtrmdyutJePXU1N.CyDDBPBLmVCUIBbYsqY3DSLO8v9v71K', NULL),
(17, NULL, 2, 6, 'finanzas2', 'finanzas2@chaxras.com', '$2y$10$dmzZXez4Jwkq/YHcx80H/u6mG8zNYlSqq3yy0pVZuka0UGMF2S3CS', NULL),
(18, NULL, 2, 3, 'Cocinero2', 'Cocinero2@chaxras.com', '$2y$10$/H59YKordzyl43ZgDtbyhOQOCSkzJuNwE/1amwrlJN.9MKtagUNju', NULL),
(19, NULL, 2, 3, 'cocinero3', 'cocinero3@chaxras.com', '$2y$10$xI8QjZfIg154TsjftkTEguQpLPcwvGdqzSs5A1/WShTjGtf4QerQK', NULL),
(20, NULL, 2, 3, 'cocinero4', 'cocinero4@chaxras.com', '$2y$10$azUwFLM7Fy1zzd77cVuJi.JCnTt74YM74fOcHm0pV8V6Hq5rwhr7i', NULL),
(21, NULL, 2, 5, 'inventario2', 'inventario2@chaxras.com', '$2y$10$g0waIIqJWxad8OJIz.vkruUaHhN/Ea71u3us7k7ivZr1Eek2vfj0W', NULL);



CREATE TABLE `usuario_promociones` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `promocion_id` int(10) UNSIGNED NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=activa,0=cancelada',
  `suscripcion_desde` date DEFAULT NULL,
  `suscripcion_hasta` date DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;




ALTER TABLE `categoriainsumo`
  ADD PRIMARY KEY (`id_categoria`);


ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`);


ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_plato` (`id_plato`);


ALTER TABLE `egresos`
  ADD PRIMARY KEY (`id_egreso`);


ALTER TABLE `feriados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fecha` (`fecha`),
  ADD UNIQUE KEY `idx_fecha` (`fecha`);


ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id_ingreso`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_reserva` (`id_reserva`);


ALTER TABLE `insumos`
  ADD PRIMARY KEY (`id_insumo`),
  ADD KEY `id_categoria` (`id_categoria`);


ALTER TABLE `lotes_insumo`
  ADD PRIMARY KEY (`id_lote`),
  ADD KEY `id_insumo` (`id_insumo`);


ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id_mesa`);


ALTER TABLE `movimientoinsumos`
  ADD PRIMARY KEY (`id_movimiento`),
  ADD KEY `id_egreso` (`id_egreso`),
  ADD KEY `fk_insumo` (`id_insumo`);


ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id_nivel`),
  ADD UNIQUE KEY `nombre` (`nombre`);


ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_trabajador` (`id_trabajador`),
  ADD KEY `fk_pedidos_mesero` (`id_mesero`);


ALTER TABLE `platos`
  ADD PRIMARY KEY (`id_plato`),
  ADD KEY `fk_tipo_plato` (`id_tipo_plato`);


ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);


ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD UNIQUE KEY `codigo_reserva` (`codigo_reserva`),
  ADD KEY `idx_fecha_estado_hora` (`fecha`,`estado`,`hora`),
  ADD KEY `FK_Reservas_Usuarios` (`id_cliente`);


ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`),
  ADD UNIQUE KEY `nombre` (`nombre`);


ALTER TABLE `slots_bloqueados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_fecha_hora` (`fecha`,`hora`),
  ADD KEY `idx_fecha_hora` (`fecha`,`hora`);


ALTER TABLE `tipo_plato`
  ADD PRIMARY KEY (`id_tipo_plato`);


ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `id_grupo` (`id_grupo`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_nivel` (`id_nivel`);


ALTER TABLE `usuario_promociones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_usuario_promocion` (`usuario_id`,`promocion_id`),
  ADD KEY `idx_up_usuario` (`usuario_id`),
  ADD KEY `idx_up_promocion` (`promocion_id`);


ALTER TABLE `categoriainsumo`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `detallepedido`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;


ALTER TABLE `egresos`
  MODIFY `id_egreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `feriados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `ingresos`
  MODIFY `id_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


ALTER TABLE `insumos`
  MODIFY `id_insumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `lotes_insumo`
  MODIFY `id_lote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `mesas`
  MODIFY `id_mesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `movimientoinsumos`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `niveles`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;


ALTER TABLE `platos`
  MODIFY `id_plato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;


ALTER TABLE `promociones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `slots_bloqueados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;


ALTER TABLE `tipo_plato`
  MODIFY `id_tipo_plato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;


ALTER TABLE `usuario_promociones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

