<?php
	class Pregunta{
		private $idPregunta;
		private $examen;
		private $pregunta;
		private $valor;

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