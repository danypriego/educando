<?php
	class AccionesYCompromisos{
		public function __construct() {

		}	

		public function find($id) {
			$sql = "SELECT * FROM AccionYCompromisos WHERE idAccionYCompromisos=".intval($id);
		}

		public function findBy($field,$value) {
			if(is_array($field)){
				$where = "";
				foreach($field as $k=>$v){
					$where .= $field[$k]."='". $value[$k] ."' AND ";
				}
				$where = "(".substr($where,0,-5).")";
				
				$sql = "SELECT * FROM AccionYCompromisos WHERE ".$where." LIMIT 1";
			}else{
				$sql = "SELECT * FROM AccionYCompromisos WHERE ".$field."='". $value ."' LIMIT 1";
			}
		}

		public function findAll($fields=NULL, $order=NULL ,$limit=NULL, $extra=NULL) {
			$fields = $fields ? $fields : '*';
			$sql = "SELECT ".$fields." FROM AccionesYCompromisos ";
			if($extra) $sql.= $extra." ";
			if($order) $sql.= "ORDER BY ".$order.' ';
			if($limit) $sql.= "LIMIT ".$limit;
		}

		public function findAllBy($field,$value){
			if(is_array($field)){
				$where = "";
				foreach($field as $k=>$v){
					$where .= $field[$k]."='".$value[$k]."' AND ";
				}
				$where = "(".substr($where,0,-5).")";
				
				$sql = "SELECT * FROM AccionesYCompromisos WHERE ".$where."";
			}else{
				$sql = "SELECT * FROM AccionesYCompromisos WHERE ".$field."='".$value."'";
			}
		}

		public function insert($array) {
			$sql = "INSERT INTO AccionesYCompromisos VALUES('". implode(",", $array) ."')";
		}

		public function update($array) {
			$sql = "UPDATE AccionesYCompromisos SET ";
		}

		public function delete($id) {
			$sql = "DELETE FROM AccionesYCompromisos WHERE idAccionYCompromisos=".intval($id);
		}
		

		public function deleteBy($field,$value) {
			$sql = "DELETE FROM AccionesYCompromisos WHERE ";
		}
	}
	
?>