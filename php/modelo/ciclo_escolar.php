<?php
	class CicloEscolar{
		private $idCicloEscolar;
		private $cicloEscolar;

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