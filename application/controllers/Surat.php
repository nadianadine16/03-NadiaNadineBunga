<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Surat extends CI_Controller {
    public function __construct() { // untuk memanggil kelas model atau library yang akan kita gunakan pada setiap function
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('form');        
        $this->load->model('Surat_model');        
        $this->load->library('form_validation');
        $this->load->library('pagination');
        $this->load->helper('file');
        $this->load->library('upload');
    }
    public function index()
    {
        $data['title'] ='Arsip Surat';
        $data['tampilSurat'] = $this->Surat_model->TampilSurat();
        $this->load->view('Template/Header.php',$data);
        $this->load->view('Surat/Index.php',$data);
        $this->load->view('Template/Footer.php',$data);
        
    }
    public function Cari(Type $var = null)
    {
        $data['title']='Search Judul';
        $keyword = $this->input->post('keyword');
        $data['hasilSearchSurat'] = $this->Surat_model->Search($keyword);   
        $this->load->view('Template/Header.php',$data);
        $this->load->view('Surat/Search.php',$data);
        $this->load->view('Template/Footer.php',$data);
    }
    public function FormArsipSurat()
    {
        $data['title'] ='Arsip Surat';
        $data['kategori'] = $this->Surat_model->TampilKategori();   
        $this->load->view('Template/Header.php',$data);
        $this->load->view('Surat/ArsipSurat.php',$data);
        $this->load->view('Template/Footer.php',$data);
    }
    public function TambahArsipSurat()
    {
        $data['title'] ='Tambah Arsip Surat';
        $data['kategori'] = $this->Surat_model->TampilKategori();   
        $this->form_validation->set_rules('nomor_surat', 'Nomor Surat', 'required');
        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('file_surat', '', 'callback_file_check');
        
        if($this->form_validation->run() == FALSE) {
            $this->load->view('Template/Header.php',$data);
            $this->load->view('Surat/ArsipSurat.php',$data);
            $this->load->view('Template/Footer.php',$data);
        }
        else {            
            $this->Surat_model->Tambah_Arsip();
            echo"<script>alert('Data Berhasil Disimpan');</script>";            
            redirect('Surat/index');
        }
    }
    public function file_check($str){
        $allowed_mime_type_arr = array('application/pdf');
        $mime = get_mime_by_extension($_FILES['file_surat']['name']);
        if(isset($_FILES['file_surat']['name']) && $_FILES['file_surat']['name']!=""){
            if(in_array($mime, $allowed_mime_type_arr)){
                // return true;
                if (filesize($_FILES['file_surat']['tmp_name']) > 2097152) {
                    $this->form_validation->set_message('file_check', 'The document file size shoud not exceed 2MB!');
                    return false;
                }
            }
            else{
                $this->form_validation->set_message('file_check', 'Please select only pdf file.');
                return false;
            }
        }
        else{
            $this->form_validation->set_message('file_check', 'Please choose a file to upload.');
            return false;
        }
    }
    public function Hapus_Data_Surat($id) {        
        $this->Surat_model->hapus_data_surat($id);        
        redirect('Surat/index','refresh');        
    }
    public function Lihat_Surat($id)
    {
        $data['title'] ='Lihat Surat';        
        $data['SuratbyId'] = $this->Surat_model->TampilSuratById($id);
        $this->load->view('Template/Header.php',$data);
        $this->load->view('Surat/LihatSurat.php',$data);
        $this->load->view('Template/Footer.php',$data);
    }
    public function About()
    {
        $data['title'] ='About Me';                
        $this->load->view('Template/Header.php',$data);
        $this->load->view('Surat/About.php',$data);
        $this->load->view('Template/Footer.php',$data);
    }
}
?>