<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Surat_model extends CI_Model {
    public function TampilSurat()
    {
        $this->db->select('*');
        $this->db->from('surat');
        $this->db->join('kategori', 'kategori.id_kategori = surat.id_kategori');        
        
        $query=$this->db->get();
        return $query->result_array();
    }
    public function Search($keyword)
    {
        $this->db->select('*');
        $this->db->from('surat');
        $this->db->join('kategori', 'kategori.id_kategori = surat.id_kategori');        
        $this->db->like('surat.judul', $keyword);

        $query=$this->db->get();
        return $query->result_array();
    }
    public function TampilKategori()
    {
        $this->db->select('*');
        $this->db->from('kategori');        
        
        $query=$this->db->get();
        
        return $query->result();                
    }
    public function Tambah_Arsip(Type $var = null)
    {
        $this->id_surat = uniqid();
        $data = [
            "nomor_surat" => $this->input->post('nomor_surat', true),
            "id_kategori" => $this->input->post('kategori', true),
            "judul" => $this->input->post('judul', true),            
            "file" => $this->upload_file()
        ];
        $this->db->insert('surat', $data);
    }
    public function upload_file() { //mengupload cover materi
        $config['upload_path'] = './upload/'; //file akan disimpan di dalam folder upload/cover_materi
        $config['allowed_types'] = 'pdf'; //ekstensi yang diizinkan hanya jpg dan png
        $config['max_size']      = 1024;
        $config['overwrite'] = true;

        $this->upload->initialize($config);
        $this->load->library('upload',$config);
        if($this->upload->do_upload('file_surat')) {
            return $this->upload->data("file_name");
        }        
    }
    public function hapus_data_surat($id)
    {
        return $this->db->delete('surat',array("id_surat"=>$id));
    }
    public function TampilSuratById($id)
    {
        $this->db->select('*');
        $this->db->from('surat');
        $this->db->join('kategori', 'kategori.id_kategori = surat.id_kategori');        
        $this->db->where('surat.id_surat', $id);    
        
        $query=$this->db->get();
        return $query->result_array();
    }
}
?>