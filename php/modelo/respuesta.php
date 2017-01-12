<?php
	class Respuesta{
		private $idRespuesta;
		private $pregunta;
		private $respuesta;

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