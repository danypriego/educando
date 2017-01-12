<?php
	class RutaMejora{
		private $idRutaDeMejora;
		private $prioridad;
		private $autoevaluacion;
		private $objetivo;
		private $meta;
		private $accionesYCompromisos;
		private $seguimiento;
		private $evaluacion;

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