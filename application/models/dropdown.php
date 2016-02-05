 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dropdown extends CI_Model {
  
  
  public function provinsi()
  {
      $dw_a = $this->db->get("provinsi")->result_array();
      return $dw_a;
  }
  
  public function kota()
  {
      $dw_b = $this->db->get("vw_kota")->result_array();
      return $dw_b;
  }
  
  public function kecamatan()
  {
      $dw_c = $this->db->get("vw_kecamatan")->result_array();
      return $dw_c;
  }
  
}
