<?php
	class Inventario{
		private $idInventario;
		private $cantidad;
		private $producto;
		private $estado;

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