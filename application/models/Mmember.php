<?php

class Mmember extends CI_Model{
	public function cek_login_user($u, $p){
		$q = $this->db->get_where('tbl_member', array('username'=>$u, 'password'=>$p));
		return $q;
	}

	public function get_akun(){
		$id = $this->session->userdata('id');
		$q = $this->db->get_where('tbl_member');
		return $q;
	}

	public function get_trans(){
		$id = $this->session->userdata('id');
		$q = $this->db->get_where('tbl_order');
		return $q;
	}

	public function get_toko_by_member(){
		$id = $this->session->userdata('id');
		$q = $this->db->get_where('tbl_toko', array('idKonsumen' => $id));
		return $q;
	}

	public function get_saldo(){
		$id = $this->session->userdata('id');
		$q = $this->db->get_where('saldo');
		return $q;
	}

	public function get_retur(){
		$id = $this->session->userdata('id');
		$q = $this->db->get_where('retur');
		return $q;
	}

	public function get_produk(){
		$id = $this->session->userdata('id');
		$q = $this->db->get_where('produk');
		return $q;
	}

	public function insert_topup($data){
		$this->db->insert('saldo', $data);
	}

	public function insert_retur($data){
		$this->db->insert('retur', $data);
	}

	public function insert_dproduk($data){
		$this->db->insert('produk', $data);
	}

	public function insert_toko($data){
		$this->db->insert('tbl_toko', $data);
	}

	public function saldotot()
	{
		$sql = "SELECT SUM(jumlah) total FROM saldo";
		$result = $this->db->query($sql);
		return $result->row()->jumlah;
	  //$this->db->query("SELECT SUM(jumlah) total FROM saldo");
	}

	public function buat_keranjang()
	{
		$sql = "SELECT * FROM keranjang,produk,tbl_member WHERE idKonsumen=id_keranjang AND id_produk=id_keranjang AND harga";
    //ini masih eror, keknya join table salah erornya lupa :v, nanti tolong lanjutin ini thanks :D
		$result = $this->db->query($sql);
		return $result;
	}

}
