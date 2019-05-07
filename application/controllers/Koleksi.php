<?php
defined('BASEPATH') OR exit('No direct script access allowed!');

class Koleksi extends CI_Controller {

    function __construct() { 
        parent::__construct();
        $this->load->model('model_koleksi');
    }

    function index() {
        $data = array(
            'title'     => 'Submit Koleksi',
            'content'   => 'admin/form_koleksi'
        );

        $this->load->view('admin/layout/wrapper', $data);
    }
}