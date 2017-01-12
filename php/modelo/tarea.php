<?php
	class Tarea{
		private $idTarea;
		private $tema;
		private $fecha;
		private $fechaEntrega;
		private $descripcion;
		private $extra;
		private $derechoExamen;

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