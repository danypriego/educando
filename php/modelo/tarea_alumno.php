<?php
	class TareaAlumno{
		private $alumno;
		private $tarea;
		private $calificacion;
		private $observaciones;

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