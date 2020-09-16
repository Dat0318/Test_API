<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Products extends CI_Controller
{


	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->model("products_model");
	}

	// List of product to show
	public function list_products()
	{
		$this->db->select("
		name,
		price_sale,
		price_entered,
		price_commercial,
		quantity,
		url,
		description,
		categories_id,
		count_views,
		status");
		$this->db->from("products");
		$query =  $this->db->get();

		$result = $query->result();
		$json = json_encode(
			array(
				"status" => 200,
				"contentType" => "application/json; charset=utf-8",
				"messages" => "This called success",
				"data" => $result,
			)
		);
		// echo "<pre>";
		echo $json;
	}



	public function add_products()
	{
		$input = file_get_contents('php://input');
		$input = json_decode($input);
		$input = (array)$input;

		// validate for data input
		foreach ($input as $index => $value) {
			if ($value == ' ' || $value == null) {
				$status = 403;
				$message = 'please fill all value. value not null';
				goto json;
			}
		}

		// $input = array();

		if ($this->db->insert("products", $input) == 1) {
			$status = 200;
			$message = 'Insert successed';
		} else {
			$status = 403;
			$message = 'Insert failed';
		}

		json:
		$json = json_encode(
			array(
				"status" => $status,
				"contentType" => "application/json; charset=utf-8",
				"messages" => $message,
			)
		);
		// echo "<pre>";
		echo $json;
	}

	public function index()
	{
	}
}
        
    /* End of file  Products.php */
