<?php
	class AccionesYCompromisos{

		private $idAccion;
		private $acciones;
		private $responsables;
		private $recursos;
		private $tiempo;
		private $costo;

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