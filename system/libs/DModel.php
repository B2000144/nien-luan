<?php 

class DModel{
	
	protected $db = array();

	public function __construct(){
		$connect = 'mysql:dbname=ban_quan_ao_PDO; host=localhost; charset=utf8';
		$user='root';
		$pass='Tripham1080';
		$this->db = new Database($connect,$user,$pass);
	}
	
}
