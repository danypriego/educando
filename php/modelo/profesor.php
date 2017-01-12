<?php
	class Profesor{
		private $idProfesor;
		private $nombre:
		private $apellido;
		private $telefono;
		private $email;
		private $especialidad;
		private $horas;

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