<?php
	class Criterio{
		private $idCriterio;
		private $criterio;
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