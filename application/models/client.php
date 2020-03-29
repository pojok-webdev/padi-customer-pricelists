<?php
Class Client extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    function getClients(){
        $sql = 'select id,name from products ';
        $ci = & get_instance();
        $que = $ci->db->query($sql);
        return array('res'=>$que->result(),'cnt'=>$que->num_rows());
    }
    function getClientSiteByClientId($client_id){
        $sql = 'select id,address from client_sites where client_id='.$client_id.' ';
        $ci = & get_instance();
        $que = $ci->db->query($sql);
        return array('res'=>$que->result(),'cnt'=>$que->num_rows());
    }
    function getbyname($name){
        $sql = 'select id,name from clients products name like "%'.$name.'%"';
        $sql.= 'order by name asc limit 0,20 ';
        $ci = & get_instance();
        $que = $ci->db->query($sql);
        return array('res'=>$que->result(),'cnt'=>$que->num_rows());
    }
}