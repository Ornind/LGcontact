<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Type extends CI_Controller {

	public function index()
	{
		
		
		//$this->load->model("typeTextModel");
		//$data['text'] = $this->typeTextModel->getRows();
		//$this->load->view('main');
		//$this->load->view('typeTextView');
	}
	}
	public function test()
	{
		echo "test1";
		
	}
	public function show($id1="")
	{
		echo "show2";
		echo $id1;
	}
	
	
}

