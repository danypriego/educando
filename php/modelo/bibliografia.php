<?php
	class Bibliografia{
		private $idBibliografia;
		private $tema;
		private $bibliografia;
		private $autor;
		private $edicion;
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