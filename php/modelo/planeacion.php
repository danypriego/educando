<?php
	class Planeacion{
		private $idPlaneacion;
		private $materia;
		private $profesor;
		private $cicloEscolar;
		private $grado;
		private $grupo;

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