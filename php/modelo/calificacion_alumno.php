<?php
	class CalificacionAlumno{
		private $alumno;
		private $materia;
		private $criterio;
		private $calificacion;

		public function __construct() {

		}	

		public function __get($name) {
        	return $this->$name;
    	}

		
		public function __set($name, $value) {
        	$this->$name = $value;
    	}
	}
?>