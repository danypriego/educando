<?php
	class Alumno{
		private $idAlumno;
		private $nombre;
		private $apellido;
		private $telefono;
		private $email;
		private $estudioSocioeconomico;
		private $canalDeAprendizaje;

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