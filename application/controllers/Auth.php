<?php
defined('BASEPATH') OR exit('No direct script access allowed!');

class Auth extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('model_login');
    }

    function index() {
        $data = array(
            'title'     => 'Repository UNJ',
            'content'   => 'beranda'
        );

		$this->load->view('layout/wrapper', $data);
    }

    function aksi_login() {
        $email      = $this->input->post("email");
        $password   = $this->input->post("password");
        
        $where = array(
            'email'     => $email,
            'password'  => md5($password)
        );

        $check_login = $this->model_login->check_login("tb_users", $where)->result_array();

        if (count($check_login) > 0) {
            foreach ($check_login as $check_login) {
                $nama       = $check_login['nama'];
                $email      = $check_login['email'];
                $level      = $check_login['level'];
                $status     = $check_login['status'];
            }

            $data_session = array(
                'nama'      => $nama,
                'email'     => $email,
                'level'     => $level,
                'status'    => $status,
                'is_login'  => TRUE,
            );
            
            $this->session->set_userdata($data_session);

            redirect('home');
        } else {
            $this->session->set_flashdata('failed', 'username atau password tidak valid.');
            redirect('auth');
        }
    }

    function logout() {
        $this->session->sess_destroy();
        redirect('auth');
    }
}