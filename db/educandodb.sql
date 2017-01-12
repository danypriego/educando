-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-01-2017 a las 21:17:37
-- Versión del servidor: 5.5.53
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `educandodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accionycompromiso`
--

CREATE TABLE `accionycompromiso` (
  `ac_idaccion` int(11) NOT NULL,
  `ac_accion` varchar(45) DEFAULT NULL,
  `ac_responsable` varchar(45) DEFAULT NULL,
  `ac_recurso` varchar(45) DEFAULT NULL,
  `ac_tiempo` varchar(45) DEFAULT NULL,
  `ac_costo` varchar(45) DEFAULT NULL,
  `RUTADEMEJORA_rut_idrutademejora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `al_idalumno` int(11) NOT NULL,
  `al_nombre` varchar(45) DEFAULT NULL,
  `al_apellido` varchar(45) DEFAULT NULL,
  `al_telefono` varchar(45) DEFAULT NULL,
  `al_email` varchar(45) DEFAULT NULL,
  `al_estudio_socioeconomico` varchar(45) DEFAULT NULL,
  `al_canal_de_aprendizaje` varchar(45) DEFAULT NULL,
  `USUARIO_us_idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `as_observaciones` varchar(45) DEFAULT NULL,
  `ASISTENCIAcol` varchar(45) DEFAULT NULL,
  `CLASE_cl_idClase` int(11) NOT NULL,
  `CLASE_SALON_GRADO_gra_idgrado` int(11) NOT NULL,
  `CLASE_SALON_GRUPO_gru_idgrupo` int(11) NOT NULL,
  `ALUMNO_al_idalumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bibliografia`
--

CREATE TABLE `bibliografia` (
  `bi_idbibliografia` int(11) NOT NULL,
  `bi_bibliografia` varchar(45) DEFAULT NULL,
  `bi_autor` varchar(45) DEFAULT NULL,
  `bi_edicion` varchar(45) DEFAULT NULL,
  `bi_descripcion` varchar(45) DEFAULT NULL,
  `TEMA_te_idtema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `ca_idcalificacion` int(11) NOT NULL,
  `ca_calificacion` varchar(45) DEFAULT NULL,
  `ca_descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_alumno`
--

CREATE TABLE `calificacion_alumno` (
  `ALUMNO_al_idalumno` int(11) NOT NULL,
  `MATERIA_ma_idmateria` int(11) NOT NULL,
  `CRITERIO_cr_idcriterio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_examen`
--

CREATE TABLE `calificacion_examen` (
  `EXAMEN_ex_idexamen` int(11) NOT NULL,
  `CALIFICACION_ca_idcalificacion` int(11) NOT NULL,
  `ALUMNO_al_idalumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_tarea`
--

CREATE TABLE `calificacion_tarea` (
  `TAREA_ta_idtarea` int(11) NOT NULL,
  `TAREA_RUBRICA_rub_idrubrica` int(11) NOT NULL,
  `CALIFICACION_ca_idcalificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cicloescolar`
--

CREATE TABLE `cicloescolar` (
  `ci_idCicloEscolar` int(11) NOT NULL,
  `ci_cicloescolar` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `cl_idClase` int(11) NOT NULL,
  `cl_clase` varchar(45) DEFAULT NULL,
  `cl_fecha` varchar(45) DEFAULT NULL,
  `SALON_GRADO_gra_idgrado` int(11) NOT NULL,
  `SALON_GRUPO_gru_idgrupo` int(11) NOT NULL,
  `PLANEACION_PROFESOR_pr_idprofesor` int(11) NOT NULL,
  `PLANEACION_CICLOESCOLAR_ci_idCicloEscolar` int(11) NOT NULL,
  `PLANEACION_MATERIA_ma_idmateria` int(11) NOT NULL,
  `PROFESOR_pr_idprofesor` int(11) NOT NULL,
  `PROFESOR_USUARIO_us_idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterio`
--

CREATE TABLE `criterio` (
  `cr_idcriterio` int(11) NOT NULL,
  `cr_criterio` varchar(45) DEFAULT NULL,
  `cr_porcentaje` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `es_idespecialidad` int(11) NOT NULL,
  `es_especialidad` varchar(45) DEFAULT NULL,
  `PROFESOR_pr_idprofesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estrategiadidactica`
--

CREATE TABLE `estrategiadidactica` (
  `es_idestrategia_didactica` int(11) NOT NULL,
  `es_estrategia_didactica` varchar(45) DEFAULT NULL,
  `es_descripcion` varchar(45) DEFAULT NULL,
  `PROFESOR_pr_idprofesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `ex_idexamen` int(11) NOT NULL,
  `ex_examen` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `gra_idgrado` int(11) NOT NULL,
  `gra_grado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `gru_idgrupo` int(11) NOT NULL,
  `gru_grupo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencia`
--

CREATE TABLE `incidencia` (
  `inc_idincidencia` int(11) NOT NULL,
  `inc_incidencia` varchar(45) DEFAULT NULL,
  `inc_descripcion` varchar(45) DEFAULT NULL,
  `inc_fecha` varchar(45) DEFAULT NULL,
  `ALUMNO_al_idalumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicador`
--

CREATE TABLE `indicador` (
  `ind_idindicador` int(11) NOT NULL,
  `ind_indicador` varchar(45) DEFAULT NULL,
  `RUBRICA_rub_idrubrica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `inv_idinventario` int(11) NOT NULL,
  `inv_cantidad` varchar(45) DEFAULT NULL,
  `inv_producto` varchar(45) DEFAULT NULL,
  `inv_estado` varchar(45) DEFAULT NULL,
  `SALON_GRADO_gra_idgrado` int(11) NOT NULL,
  `SALON_GRUPO_gru_idgrupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `ma_idmateria` int(11) NOT NULL,
  `ma_materia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_has_profesor`
--

CREATE TABLE `materia_has_profesor` (
  `MATERIA_ma_idmateria` int(11) NOT NULL,
  `PROFESOR_pr_idprofesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveldesempeno`
--

CREATE TABLE `niveldesempeno` (
  `ni_idnivel_de_desempeno` int(11) NOT NULL,
  `ni_nivel_de_desempeno` varchar(45) DEFAULT NULL,
  `RUBRICA_rub_idrubrica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planeacion`
--

CREATE TABLE `planeacion` (
  `PROFESOR_pr_idprofesor` int(11) NOT NULL,
  `CICLOESCOLAR_ci_idCicloEscolar` int(11) NOT NULL,
  `MATERIA_ma_idmateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `pr_idpregunta` int(11) NOT NULL,
  `pr_pregunta` varchar(45) DEFAULT NULL,
  `EXAMEN_ex_idexamen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `pr_idprofesor` int(11) NOT NULL,
  `pr_nombre` varchar(45) DEFAULT NULL,
  `pr_apellido` varchar(45) DEFAULT NULL,
  `pr_telefono` varchar(45) DEFAULT NULL,
  `pr_email` varchar(45) DEFAULT NULL,
  `pr_horas` varchar(45) DEFAULT NULL,
  `USUARIO_us_idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `re_idrespuesta` int(11) NOT NULL,
  `re_respuesta` varchar(45) DEFAULT NULL,
  `PREGUNTA_pr_idpregunta` int(11) NOT NULL,
  `PREGUNTA_EXAMEN_ex_idexamen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubrica`
--

CREATE TABLE `rubrica` (
  `rub_idrubrica` int(11) NOT NULL,
  `rub_nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutademejora`
--

CREATE TABLE `rutademejora` (
  `rut_idrutademejora` int(11) NOT NULL,
  `rut_prioridad` varchar(45) DEFAULT NULL,
  `rut_autoevaluacion` varchar(45) DEFAULT NULL,
  `rut_objetivo` varchar(45) DEFAULT NULL,
  `rut_seguimiento` varchar(45) DEFAULT NULL,
  `rut_evaluaciones` varchar(45) DEFAULT NULL,
  `PROFESOR_pr_idprofesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE `salon` (
  `GRADO_gra_idgrado` int(11) NOT NULL,
  `GRUPO_gru_idgrupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `ta_idtarea` int(11) NOT NULL,
  `ta_tarea` varchar(45) DEFAULT NULL,
  `ta_descripcion` varchar(45) DEFAULT NULL,
  `ta_fecha` varchar(45) DEFAULT NULL,
  `ta_fecha_de_entrega` varchar(45) DEFAULT NULL,
  `ta_extra` varchar(45) DEFAULT NULL,
  `ta_derecho_a_examen` varchar(45) DEFAULT NULL,
  `RUBRICA_rub_idrubrica` int(11) NOT NULL,
  `TEMA_te_idtema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `te_idtema` int(11) NOT NULL,
  `te_tema` varchar(45) DEFAULT NULL,
  `te_descripcion` varchar(45) DEFAULT NULL,
  `te_fecha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `us_idusuario` int(11) NOT NULL,
  `us_usuario` varchar(45) DEFAULT NULL,
  `us_clave` varchar(45) DEFAULT NULL,
  `us_privilegios` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accionycompromiso`
--
ALTER TABLE `accionycompromiso`
  ADD PRIMARY KEY (`ac_idaccion`,`RUTADEMEJORA_rut_idrutademejora`),
  ADD KEY `fk_ACCIONYCOMPROMISO_RUTADEMEJORA_idx` (`RUTADEMEJORA_rut_idrutademejora`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`al_idalumno`,`USUARIO_us_idusuario`),
  ADD KEY `fk_ALUMNO_USUARIO1_idx` (`USUARIO_us_idusuario`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`CLASE_cl_idClase`,`CLASE_SALON_GRADO_gra_idgrado`,`CLASE_SALON_GRUPO_gru_idgrupo`,`ALUMNO_al_idalumno`),
  ADD KEY `fk_ASISTENCIA_ALUMNO1_idx` (`ALUMNO_al_idalumno`);

--
-- Indices de la tabla `bibliografia`
--
ALTER TABLE `bibliografia`
  ADD PRIMARY KEY (`bi_idbibliografia`,`TEMA_te_idtema`),
  ADD KEY `fk_BIBLIOGRAFIA_TEMA1_idx` (`TEMA_te_idtema`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`ca_idcalificacion`);

--
-- Indices de la tabla `calificacion_alumno`
--
ALTER TABLE `calificacion_alumno`
  ADD PRIMARY KEY (`ALUMNO_al_idalumno`,`MATERIA_ma_idmateria`,`CRITERIO_cr_idcriterio`),
  ADD KEY `fk_CALIFICACION_ALUMNO_MATERIA1_idx` (`MATERIA_ma_idmateria`),
  ADD KEY `fk_CALIFICACION_ALUMNO_CRITERIO1_idx` (`CRITERIO_cr_idcriterio`);

--
-- Indices de la tabla `calificacion_examen`
--
ALTER TABLE `calificacion_examen`
  ADD PRIMARY KEY (`EXAMEN_ex_idexamen`,`CALIFICACION_ca_idcalificacion`,`ALUMNO_al_idalumno`),
  ADD KEY `fk_CALIFICACION_EXAMEN_CALIFICACION1_idx` (`CALIFICACION_ca_idcalificacion`),
  ADD KEY `fk_CALIFICACION_EXAMEN_ALUMNO1_idx` (`ALUMNO_al_idalumno`);

--
-- Indices de la tabla `calificacion_tarea`
--
ALTER TABLE `calificacion_tarea`
  ADD PRIMARY KEY (`TAREA_ta_idtarea`,`TAREA_RUBRICA_rub_idrubrica`,`CALIFICACION_ca_idcalificacion`),
  ADD KEY `fk_CALIFICACION_TAREA_CALIFICACION1_idx` (`CALIFICACION_ca_idcalificacion`);

--
-- Indices de la tabla `cicloescolar`
--
ALTER TABLE `cicloescolar`
  ADD PRIMARY KEY (`ci_idCicloEscolar`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`cl_idClase`,`SALON_GRADO_gra_idgrado`,`SALON_GRUPO_gru_idgrupo`,`PLANEACION_PROFESOR_pr_idprofesor`,`PLANEACION_CICLOESCOLAR_ci_idCicloEscolar`,`PLANEACION_MATERIA_ma_idmateria`,`PROFESOR_pr_idprofesor`,`PROFESOR_USUARIO_us_idusuario`),
  ADD KEY `fk_CLASE_SALON1_idx` (`SALON_GRADO_gra_idgrado`,`SALON_GRUPO_gru_idgrupo`),
  ADD KEY `fk_CLASE_PLANEACION1_idx` (`PLANEACION_PROFESOR_pr_idprofesor`,`PLANEACION_CICLOESCOLAR_ci_idCicloEscolar`,`PLANEACION_MATERIA_ma_idmateria`),
  ADD KEY `fk_CLASE_PROFESOR1_idx` (`PROFESOR_pr_idprofesor`,`PROFESOR_USUARIO_us_idusuario`);

--
-- Indices de la tabla `criterio`
--
ALTER TABLE `criterio`
  ADD PRIMARY KEY (`cr_idcriterio`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`es_idespecialidad`,`PROFESOR_pr_idprofesor`),
  ADD KEY `fk_ESPECIALIDAD_PROFESOR1_idx` (`PROFESOR_pr_idprofesor`);

--
-- Indices de la tabla `estrategiadidactica`
--
ALTER TABLE `estrategiadidactica`
  ADD PRIMARY KEY (`es_idestrategia_didactica`,`PROFESOR_pr_idprofesor`),
  ADD KEY `fk_ESTRATEGIADIDACTICA_PROFESOR1_idx` (`PROFESOR_pr_idprofesor`);

--
-- Indices de la tabla `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`ex_idexamen`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`gra_idgrado`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`gru_idgrupo`);

--
-- Indices de la tabla `incidencia`
--
ALTER TABLE `incidencia`
  ADD PRIMARY KEY (`inc_idincidencia`,`ALUMNO_al_idalumno`),
  ADD KEY `fk_INCIDENCIA_ALUMNO1_idx` (`ALUMNO_al_idalumno`);

--
-- Indices de la tabla `indicador`
--
ALTER TABLE `indicador`
  ADD PRIMARY KEY (`ind_idindicador`,`RUBRICA_rub_idrubrica`),
  ADD KEY `fk_INDICADOR_RUBRICA1_idx` (`RUBRICA_rub_idrubrica`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`inv_idinventario`,`SALON_GRADO_gra_idgrado`,`SALON_GRUPO_gru_idgrupo`),
  ADD KEY `fk_INVENTARIO_SALON1_idx` (`SALON_GRADO_gra_idgrado`,`SALON_GRUPO_gru_idgrupo`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`ma_idmateria`);

--
-- Indices de la tabla `materia_has_profesor`
--
ALTER TABLE `materia_has_profesor`
  ADD PRIMARY KEY (`MATERIA_ma_idmateria`,`PROFESOR_pr_idprofesor`),
  ADD KEY `fk_MATERIA_has_PROFESOR_PROFESOR1_idx` (`PROFESOR_pr_idprofesor`),
  ADD KEY `fk_MATERIA_has_PROFESOR_MATERIA1_idx` (`MATERIA_ma_idmateria`);

--
-- Indices de la tabla `niveldesempeno`
--
ALTER TABLE `niveldesempeno`
  ADD PRIMARY KEY (`ni_idnivel_de_desempeno`,`RUBRICA_rub_idrubrica`),
  ADD KEY `fk_NIVELDESEMPENO_RUBRICA1_idx` (`RUBRICA_rub_idrubrica`);

--
-- Indices de la tabla `planeacion`
--
ALTER TABLE `planeacion`
  ADD PRIMARY KEY (`PROFESOR_pr_idprofesor`,`CICLOESCOLAR_ci_idCicloEscolar`,`MATERIA_ma_idmateria`),
  ADD KEY `fk_PLANEACION_CICLOESCOLAR1_idx` (`CICLOESCOLAR_ci_idCicloEscolar`),
  ADD KEY `fk_PLANEACION_MATERIA1_idx` (`MATERIA_ma_idmateria`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`pr_idpregunta`,`EXAMEN_ex_idexamen`),
  ADD KEY `fk_PREGUNTA_EXAMEN1_idx` (`EXAMEN_ex_idexamen`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`pr_idprofesor`,`USUARIO_us_idusuario`),
  ADD KEY `fk_PROFESOR_USUARIO1_idx` (`USUARIO_us_idusuario`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`re_idrespuesta`,`PREGUNTA_pr_idpregunta`,`PREGUNTA_EXAMEN_ex_idexamen`),
  ADD KEY `fk_RESPUESTA_PREGUNTA1_idx` (`PREGUNTA_pr_idpregunta`,`PREGUNTA_EXAMEN_ex_idexamen`);

--
-- Indices de la tabla `rubrica`
--
ALTER TABLE `rubrica`
  ADD PRIMARY KEY (`rub_idrubrica`);

--
-- Indices de la tabla `rutademejora`
--
ALTER TABLE `rutademejora`
  ADD PRIMARY KEY (`rut_idrutademejora`,`PROFESOR_pr_idprofesor`),
  ADD KEY `fk_RUTADEMEJORA_PROFESOR1_idx` (`PROFESOR_pr_idprofesor`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
  ADD PRIMARY KEY (`GRADO_gra_idgrado`,`GRUPO_gru_idgrupo`),
  ADD KEY `fk_SALON_GRUPO1_idx` (`GRUPO_gru_idgrupo`);

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`ta_idtarea`,`RUBRICA_rub_idrubrica`,`TEMA_te_idtema`),
  ADD KEY `fk_TAREA_RUBRICA1_idx` (`RUBRICA_rub_idrubrica`),
  ADD KEY `fk_TAREA_TEMA1_idx` (`TEMA_te_idtema`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`te_idtema`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`us_idusuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accionycompromiso`
--
ALTER TABLE `accionycompromiso`
  ADD CONSTRAINT `fk_ACCIONYCOMPROMISO_RUTADEMEJORA` FOREIGN KEY (`RUTADEMEJORA_rut_idrutademejora`) REFERENCES `rutademejora` (`rut_idrutademejora`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `fk_ALUMNO_USUARIO1` FOREIGN KEY (`USUARIO_us_idusuario`) REFERENCES `usuario` (`us_idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `fk_ASISTENCIA_CLASE1` FOREIGN KEY (`CLASE_cl_idClase`,`CLASE_SALON_GRADO_gra_idgrado`,`CLASE_SALON_GRUPO_gru_idgrupo`) REFERENCES `clase` (`cl_idClase`, `SALON_GRADO_gra_idgrado`, `SALON_GRUPO_gru_idgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ASISTENCIA_ALUMNO1` FOREIGN KEY (`ALUMNO_al_idalumno`) REFERENCES `alumno` (`al_idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `bibliografia`
--
ALTER TABLE `bibliografia`
  ADD CONSTRAINT `fk_BIBLIOGRAFIA_TEMA1` FOREIGN KEY (`TEMA_te_idtema`) REFERENCES `tema` (`te_idtema`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `calificacion_alumno`
--
ALTER TABLE `calificacion_alumno`
  ADD CONSTRAINT `fk_CALIFICACION_ALUMNO_ALUMNO1` FOREIGN KEY (`ALUMNO_al_idalumno`) REFERENCES `alumno` (`al_idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CALIFICACION_ALUMNO_MATERIA1` FOREIGN KEY (`MATERIA_ma_idmateria`) REFERENCES `materia` (`ma_idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CALIFICACION_ALUMNO_CRITERIO1` FOREIGN KEY (`CRITERIO_cr_idcriterio`) REFERENCES `criterio` (`cr_idcriterio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `calificacion_examen`
--
ALTER TABLE `calificacion_examen`
  ADD CONSTRAINT `fk_CALIFICACION_EXAMEN_EXAMEN1` FOREIGN KEY (`EXAMEN_ex_idexamen`) REFERENCES `examen` (`ex_idexamen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CALIFICACION_EXAMEN_CALIFICACION1` FOREIGN KEY (`CALIFICACION_ca_idcalificacion`) REFERENCES `calificacion` (`ca_idcalificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CALIFICACION_EXAMEN_ALUMNO1` FOREIGN KEY (`ALUMNO_al_idalumno`) REFERENCES `alumno` (`al_idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `calificacion_tarea`
--
ALTER TABLE `calificacion_tarea`
  ADD CONSTRAINT `fk_CALIFICACION_TAREA_TAREA1` FOREIGN KEY (`TAREA_ta_idtarea`,`TAREA_RUBRICA_rub_idrubrica`) REFERENCES `tarea` (`ta_idtarea`, `RUBRICA_rub_idrubrica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CALIFICACION_TAREA_CALIFICACION1` FOREIGN KEY (`CALIFICACION_ca_idcalificacion`) REFERENCES `calificacion` (`ca_idcalificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `fk_CLASE_SALON1` FOREIGN KEY (`SALON_GRADO_gra_idgrado`,`SALON_GRUPO_gru_idgrupo`) REFERENCES `salon` (`GRADO_gra_idgrado`, `GRUPO_gru_idgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CLASE_PLANEACION1` FOREIGN KEY (`PLANEACION_PROFESOR_pr_idprofesor`,`PLANEACION_CICLOESCOLAR_ci_idCicloEscolar`,`PLANEACION_MATERIA_ma_idmateria`) REFERENCES `planeacion` (`PROFESOR_pr_idprofesor`, `CICLOESCOLAR_ci_idCicloEscolar`, `MATERIA_ma_idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CLASE_PROFESOR1` FOREIGN KEY (`PROFESOR_pr_idprofesor`,`PROFESOR_USUARIO_us_idusuario`) REFERENCES `profesor` (`pr_idprofesor`, `USUARIO_us_idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD CONSTRAINT `fk_ESPECIALIDAD_PROFESOR1` FOREIGN KEY (`PROFESOR_pr_idprofesor`) REFERENCES `profesor` (`pr_idprofesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estrategiadidactica`
--
ALTER TABLE `estrategiadidactica`
  ADD CONSTRAINT `fk_ESTRATEGIADIDACTICA_PROFESOR1` FOREIGN KEY (`PROFESOR_pr_idprofesor`) REFERENCES `profesor` (`pr_idprofesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `incidencia`
--
ALTER TABLE `incidencia`
  ADD CONSTRAINT `fk_INCIDENCIA_ALUMNO1` FOREIGN KEY (`ALUMNO_al_idalumno`) REFERENCES `alumno` (`al_idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `indicador`
--
ALTER TABLE `indicador`
  ADD CONSTRAINT `fk_INDICADOR_RUBRICA1` FOREIGN KEY (`RUBRICA_rub_idrubrica`) REFERENCES `rubrica` (`rub_idrubrica`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_INVENTARIO_SALON1` FOREIGN KEY (`SALON_GRADO_gra_idgrado`,`SALON_GRUPO_gru_idgrupo`) REFERENCES `salon` (`GRADO_gra_idgrado`, `GRUPO_gru_idgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materia_has_profesor`
--
ALTER TABLE `materia_has_profesor`
  ADD CONSTRAINT `fk_MATERIA_has_PROFESOR_MATERIA1` FOREIGN KEY (`MATERIA_ma_idmateria`) REFERENCES `materia` (`ma_idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_MATERIA_has_PROFESOR_PROFESOR1` FOREIGN KEY (`PROFESOR_pr_idprofesor`) REFERENCES `profesor` (`pr_idprofesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `niveldesempeno`
--
ALTER TABLE `niveldesempeno`
  ADD CONSTRAINT `fk_NIVELDESEMPENO_RUBRICA1` FOREIGN KEY (`RUBRICA_rub_idrubrica`) REFERENCES `rubrica` (`rub_idrubrica`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planeacion`
--
ALTER TABLE `planeacion`
  ADD CONSTRAINT `fk_PLANEACION_PROFESOR1` FOREIGN KEY (`PROFESOR_pr_idprofesor`) REFERENCES `profesor` (`pr_idprofesor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PLANEACION_CICLOESCOLAR1` FOREIGN KEY (`CICLOESCOLAR_ci_idCicloEscolar`) REFERENCES `cicloescolar` (`ci_idCicloEscolar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PLANEACION_MATERIA1` FOREIGN KEY (`MATERIA_ma_idmateria`) REFERENCES `materia` (`ma_idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `fk_PREGUNTA_EXAMEN1` FOREIGN KEY (`EXAMEN_ex_idexamen`) REFERENCES `examen` (`ex_idexamen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `fk_PROFESOR_USUARIO1` FOREIGN KEY (`USUARIO_us_idusuario`) REFERENCES `usuario` (`us_idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `fk_RESPUESTA_PREGUNTA1` FOREIGN KEY (`PREGUNTA_pr_idpregunta`,`PREGUNTA_EXAMEN_ex_idexamen`) REFERENCES `pregunta` (`pr_idpregunta`, `EXAMEN_ex_idexamen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rutademejora`
--
ALTER TABLE `rutademejora`
  ADD CONSTRAINT `fk_RUTADEMEJORA_PROFESOR1` FOREIGN KEY (`PROFESOR_pr_idprofesor`) REFERENCES `profesor` (`pr_idprofesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `salon`
--
ALTER TABLE `salon`
  ADD CONSTRAINT `fk_SALON_GRADO1` FOREIGN KEY (`GRADO_gra_idgrado`) REFERENCES `grado` (`gra_idgrado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SALON_GRUPO1` FOREIGN KEY (`GRUPO_gru_idgrupo`) REFERENCES `grupo` (`gru_idgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD CONSTRAINT `fk_TAREA_RUBRICA1` FOREIGN KEY (`RUBRICA_rub_idrubrica`) REFERENCES `rubrica` (`rub_idrubrica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TAREA_TEMA1` FOREIGN KEY (`TEMA_te_idtema`) REFERENCES `tema` (`te_idtema`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
