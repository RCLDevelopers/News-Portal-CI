<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Changepassword_Model extends CI_Model{

// For getting current password
public function getcurrentpassword($uid){
$query=$this->db->where('id',$uid)
                ->get('tbladmin');
       if($query->num_rows()>0)
       {
       	return $query->row();
       } }
// For updating Password
public function updatepassword($uid,$newpassword)
{
$data=array('password' =>$newpassword );	
return $this->db->where(['id'=>$uid])
                ->update('tbladmin',$data);
}       


}