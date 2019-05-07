<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class Beranda extends CI_Controller {

    function __construct() {
        parent::__construct();

    }

    public function index() {
        $data_sess  = $this->session->all_userdata();
        // Ini di declare sendiri karna klo pake all_userdata[is_login] bakal ada error karna valuenya undefined klo session sdh didestroy
        $is_login   = $this->session->userdata('is_login'); 
        if ($is_login == true) {
            if ($data_sess['level'] == "admin") {
                $data = array(
                    'title'     => 'Beranda',
                    'content'   => 'admin/beranda',
                    'nama'      => $data_sess['nama']
                );
                
                $this->load->view('admin/layout/wrapper', $data);
            } else if ($data_sess['level'] == "guest") {
                $data = array(
                    'title'     => 'Beranda',
                    'content'   => 'guest/beranda',
                    'nama'      => $data_sess['nama']
                );

                $this->load->view('layout/wrapper', $data);
            }
        } else {
            echo "<script>alert('Halaman tidak dapat diakses. Silahkan login!')</script>";
            redirect('auth/logout', 'refresh');
        }
    }
}