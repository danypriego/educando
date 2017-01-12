<?php
	class EstrategiaDidactica{
		private $idEstrategia;
		private $estrategia;
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