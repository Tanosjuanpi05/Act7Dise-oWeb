-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2025 at 04:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseKey` varchar(50) NOT NULL,
  `NombreCurso` varchar(100) NOT NULL,
  `Descripcion` varchar(500) DEFAULT NULL,
  `RoboticsKitRequerido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseKey`, `NombreCurso`, `Descripcion`, `RoboticsKitRequerido`) VALUES
('C001', 'Introducción a la Robótica', 'Curso básico para aprender los fundamentos de la robótica.', 1),
('C002', 'Programación en Python', 'Curso introductorio para aprender a programar en Python.', 2),
('C003', 'Diseño de Circuitos Electrónicos', 'Aprende a diseñar circuitos electrónicos desde cero.', 3),
('C004', 'Inteligencia Artificial', 'Curso avanzado sobre técnicas de inteligencia artificial.', 1),
('C005', 'Automatización Industrial', 'Curso sobre sistemas de automatización en la industria.', 2),
('C006', 'Desarrollo de Aplicaciones Web', 'Aprende a crear aplicaciones web modernas.', 3),
('C007', 'Curso de Robótica Avanzada', 'Curso avanzado para aprender robótica aplicada.', 1),
('C008', 'Automatización con Python', 'Automatización de procesos usando Python.', 2),
('C009', 'Desarrollo Web Avanzado', 'Curso avanzado para desarrollo de aplicaciones web.', 3),
('C010', 'Impresión 3D Avanzada', 'Curso avanzado para impresión 3D.', 4),
('C011', 'Programación de Drones', 'Curso para aprender a programar drones.', 5),
('C012', 'Visión por Computadora', 'Curso introductorio a la visión por computadora.', 6),
('C013', 'Inteligencia Artificial Aplicada', 'Curso práctico de IA aplicada.', 1),
('C014', 'Automatización Industrial Avanzada', 'Curso avanzado sobre automatización industrial.', 2),
('C015', 'Desarrollo de APIs REST', 'Curso para aprender a desarrollar APIs REST.', 3),
('C016', 'Diseño de Prototipos 3D', 'Curso para diseñar prototipos en 3D.', 4),
('C017', 'Control de Drones', 'Curso avanzado para control de drones.', 5),
('C018', 'Procesamiento de Imágenes', 'Curso avanzado de procesamiento de imágenes.', 6),
('C019', 'Machine Learning', 'Curso introductorio a Machine Learning.', 1),
('C020', 'Automatización con Arduino', 'Curso para automatización usando Arduino.', 2),
('C021', 'Desarrollo Frontend', 'Curso para aprender desarrollo frontend.', 3),
('C022', 'Fabricación Digital', 'Curso sobre fabricación digital y prototipado.', 4),
('C023', 'Programación de Robots', 'Curso para aprender a programar robots.', 1),
('C024', 'Automatización con IoT', 'Curso sobre automatización usando IoT.', 2),
('C025', 'Desarrollo Backend', 'Curso para aprender desarrollo backend.', 3),
('C026', 'Diseño de Modelos 3D', 'Curso para diseñar modelos en 3D.', 4),
('C027', 'Simulación de Drones', 'Curso para simular drones en entornos virtuales.', 5),
('C028', 'Reconocimiento de Imágenes', 'Curso avanzado de reconocimiento de imágenes.', 6),
('C029', 'Redes Neuronales', 'Curso introductorio a redes neuronales.', 1),
('C030', 'Automatización con Raspberry Pi', 'Curso para automatización usando Raspberry Pi.', 2),
('C031', 'Desarrollo Fullstack', 'Curso para aprender desarrollo fullstack.', 3),
('C032', 'Prototipado Rápido', 'Curso sobre técnicas de prototipado rápido.', 4),
('C033', 'Programación de Vehículos Autónomos', 'Curso para programar vehículos autónomos.', 1),
('C034', 'Automatización en la Nube', 'Curso sobre automatización usando servicios en la nube.', 2),
('C035', 'Desarrollo de Aplicaciones Móviles', 'Curso para aprender desarrollo móvil.', 3),
('C036', 'Fabricación de Piezas 3D', 'Curso para fabricar piezas en 3D.', 4),
('C037', 'Control de Robots', 'Curso avanzado para control de robots.', 1),
('C038', 'Automatización con PLCs', 'Curso sobre automatización usando PLCs.', 2),
('C039', 'Desarrollo de Juegos', 'Curso para aprender desarrollo de videojuegos.', 3),
('C040', 'Diseño de Productos 3D', 'Curso para diseñar productos en 3D.', 4),
('C041', 'Programación de Sistemas Autónomos', 'Curso para programar sistemas autónomos.', 1),
('C042', 'Automatización con Inteligencia Artificial', 'Curso sobre automatización usando IA.', 2),
('C043', 'Desarrollo de Aplicaciones Empresariales', 'Curso para aprender desarrollo empresarial.', 3),
('C044', 'Prototipado Avanzado', 'Curso avanzado sobre prototipado.', 4),
('C045', 'Programación de Máquinas Autónomas', 'Curso para programar máquinas autónomas.', 1),
('C046', 'Automatización con Sensores', 'Curso sobre automatización usando sensores.', 2),
('C047', 'Desarrollo de Aplicaciones en la Nube', 'Curso para aprender desarrollo en la nube.', 3),
('C048', 'Fabricación de Prototipos', 'Curso para fabricar prototipos.', 4),
('C049', 'Control de Máquinas Autónomas', 'Curso avanzado para control de máquinas autónomas.', 1),
('C050', 'Automatización con Big Data', 'Curso sobre automatización usando Big Data.', 2),
('C051', 'Desarrollo de Aplicaciones con IA', 'Curso para aprender desarrollo con IA.', 3),
('C052', 'Diseño de Interfaces 3D', 'Curso para diseñar interfaces en 3D.', 4),
('C053', 'Programación de Sistemas Inteligentes', 'Curso para programar sistemas inteligentes.', 1),
('C054', 'Automatización con Machine Learning', 'Curso sobre automatización usando Machine Learning.', 2),
('C055', 'Desarrollo de Aplicaciones Interactivas', 'Curso para aprender desarrollo interactivo.', 3),
('C056', 'Fabricación de Modelos 3D', 'Curso para fabricar modelos en 3D.', 4),
('C057', 'Control de Sistemas Inteligentes', 'Curso avanzado para control de sistemas inteligentes.', 1),
('C058', 'Automatización con Redes Neuronales', 'Curso sobre automatización usando redes neuronales.', 2),
('C059', 'Desarrollo de Aplicaciones de Realidad Aumentada', 'Curso para aprender desarrollo de realidad aumentada.', 3),
('C060', 'Diseño de Prototipos Avanzados', 'Curso avanzado sobre diseño de prototipos.', 4),
('C061', 'Programación de Sistemas Autónomos Avanzados', 'Curso avanzado para programar sistemas autónomos.', 1),
('C062', 'Automatización con IoT Avanzado', 'Curso avanzado sobre IoT.', 2),
('C063', 'Desarrollo de Aplicaciones de Realidad Virtual', 'Curso para aprender desarrollo de realidad virtual.', 3),
('C064', 'Fabricación de Piezas Avanzadas', 'Curso avanzado para fabricar piezas.', 4),
('C065', 'Control de Vehículos Autónomos', 'Curso avanzado para control de vehículos autónomos.', 1),
('C066', 'Automatización con IA Avanzada', 'Curso avanzado sobre IA.', 2),
('C067', 'Desarrollo de Aplicaciones Empresariales Avanzadas', 'Curso avanzado para desarrollo empresarial.', 3),
('C068', 'Prototipado Rápido Avanzado', 'Curso avanzado sobre prototipado rápido.', 4),
('C069', 'Programación de Máquinas Autónomas Avanzadas', 'Curso avanzado para programar máquinas autónomas.', 1),
('C070', 'Automatización con Sensores Avanzados', 'Curso avanzado sobre sensores.', 2),
('C071', 'Desarrollo de Aplicaciones en la Nube Avanzadas', 'Curso avanzado para desarrollo en la nube.', 3),
('C072', 'Fabricación de Prototipos Avanzados', 'Curso avanzado para fabricar prototipos.', 4),
('C073', 'Control de Máquinas Autónomas Avanzadas', 'Curso avanzado para control de máquinas autónomas.', 1),
('C074', 'Automatización con Big Data Avanzado', 'Curso avanzado sobre Big Data.', 2),
('C075', 'Desarrollo de Aplicaciones con IA Avanzadas', 'Curso avanzado para desarrollo con IA.', 3),
('C076', 'Diseño de Interfaces 3D Avanzadas', 'Curso avanzado para diseñar interfaces en 3D.', 4),
('C077', 'Programación de Sistemas Inteligentes Avanzados', 'Curso avanzado para programar sistemas inteligentes.', 1),
('C078', 'Automatización con Machine Learning Avanzado', 'Curso avanzado sobre Machine Learning.', 2),
('C079', 'Desarrollo de Aplicaciones Interactivas Avanzadas', 'Curso avanzado para desarrollo interactivo.', 3),
('C080', 'Fabricación de Modelos 3D Avanzados', 'Curso avanzado para fabricar modelos en 3D.', 4),
('C081', 'Control de Sistemas Inteligentes Avanzados', 'Curso avanzado para control de sistemas inteligentes.', 1),
('C082', 'Automatización con Redes Neuronales Avanzadas', 'Curso avanzado sobre redes neuronales.', 2),
('C083', 'Desarrollo de Aplicaciones de Realidad Aumentada Avanzadas', 'Curso avanzado para desarrollo de realidad aumentada.', 3),
('C084', 'Diseño de Prototipos Avanzados', 'Curso avanzado sobre diseño de prototipos.', 4),
('C085', 'Programación de Sistemas Autónomos Avanzados', 'Curso avanzado para programar sistemas autónomos.', 1),
('C086', 'Automatización con IoT Avanzado', 'Curso avanzado sobre IoT.', 2),
('C087', 'Desarrollo de Aplicaciones de Realidad Virtual Avanzadas', 'Curso avanzado para desarrollo de realidad virtual.', 3),
('C088', 'Fabricación de Piezas Avanzadas', 'Curso avanzado para fabricar piezas.', 4),
('C089', 'Control de Vehículos Autónomos Avanzados', 'Curso avanzado para control de vehículos autónomos.', 1),
('C090', 'Automatización con IA Avanzada', 'Curso avanzado sobre IA.', 2),
('C091', 'Desarrollo de Aplicaciones Empresariales Avanzadas', 'Curso avanzado para desarrollo empresarial.', 3),
('C092', 'Prototipado Rápido Avanzado', 'Curso avanzado sobre prototipado rápido.', 4),
('C093', 'Programación de Máquinas Autónomas Avanzadas', 'Curso avanzado para programar máquinas autónomas.', 1),
('C094', 'Automatización con Sensores Avanzados', 'Curso avanzado sobre sensores.', 2),
('C095', 'Desarrollo de Aplicaciones en la Nube Avanzadas', 'Curso avanzado para desarrollo en la nube.', 3),
('C096', 'Fabricación de Prototipos Avanzados', 'Curso avanzado para fabricar prototipos.', 4),
('C097', 'Control de Máquinas Autónomas Avanzadas', 'Curso avanzado para control de máquinas autónomas.', 1),
('C098', 'Automatización con Big Data Avanzado', 'Curso avanzado sobre Big Data.', 2),
('C099', 'Desarrollo de Aplicaciones con IA Avanzadas', 'Curso avanzado para desarrollo con IA.', 3),
('C100', 'Diseño de Interfaces 3D Avanzadas', 'Curso avanzado para diseñar interfaces en 3D.', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseKey`),
  ADD KEY `RoboticsKitRequerido` (`RoboticsKitRequerido`),
  ADD KEY `ix_courses_CourseKey` (`CourseKey`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`RoboticsKitRequerido`) REFERENCES `robotics_kits` (`KitID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
