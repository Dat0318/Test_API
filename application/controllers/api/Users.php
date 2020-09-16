<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Users extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->model("users_model");
	}

	public function list_users()
	{
		// echo "This is list users";
		$this->db->select("
		firstname,
		lastname,
		gender,
		birthday,
		avatar,
		groups_id,
		phone,
		address");
		$this->db->from("users");
		$query =  $this->db->get();

		$result = $query->result();

		// echo "<pre>";
		// print_r($result);
		$json = json_encode(
			array(
				"status" => 200,
				"messages" => "This called success",
				"data" => $result,
			)
		);
		// echo "<pre>";
		echo $json;
	}

	public function index()
	{
	}
}
        
    /* End of file  Users.php */
