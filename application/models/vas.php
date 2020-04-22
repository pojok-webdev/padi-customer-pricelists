<?php
Class Vas extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    function gets(){
        $sql = 'select * from vases ';
        $ci= & get_instance();
        $que = $ci->db->query($sql);
        return array('res'=>$que->result(),'cnt'=>$que->num_rows());
    }
    function getbyid($id){
        $sql = 'select * from vases ';
        $sql.= 'where id='.$id.'';
        $ci= & get_instance();
        $que = $ci->db->query($sql);
        return array('res'=>$que->result(),'cnt'=>$que->num_rows());
    }
    function update($params){
        $sql = 'update vases ';
        $sql.= 'set descriptionblob="'.$params['descriptionblob'].'"';
        $sql.= 'where id='.$params['id'].'';
        $ci= & get_instance();
        $que = $ci->db->query($sql);
        return $sql;
    }
    function setDescriptionBlob(){
        for($x=2;$x<=100;$x++){
            $sql = 'update vases ';
            $sql.= 'set descriptionblob="'.base64_encode('description').'"';
            $sql.= 'where id='.$x.'';
            $ci= & get_instance();
            $que = $ci->db->query($sql);
            return $sql;
        }
    }
    function getdescription($id){
        $sql = 'select descriptionblob from vases ';
        $sql.= 'where id='.$id.' ';
        $ci= & get_instance();
        $que = $ci->db->query($sql);
        return $sql;//$que->result();
}
}