<?php
	class Rubrica{
		private $indicador;
		private $niveldesempeno;
		private $descripcion;
		private $porcentaje;

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