<?php
	class CalificacionExamen{
		private $examen;
		private $alumno;
		private $calificacion;
		private $observacion;

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