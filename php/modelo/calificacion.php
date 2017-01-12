<?php
	class Calificacion{
		private $idCalificacion;
		private $calificacion;
		private $descripcion;

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