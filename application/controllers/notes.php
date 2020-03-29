<?php
Class Notes extends CI_Controller{
    function __construct(){
        parent::__construct();
    }
    function index(){
        $data['objs'] = $this->note->gets();
        $data['categories'] = $this->service->getCategories();
        $this->load->view('notes/index',$data);
    }
    function getajaxsource($objs){
        $arr = array();
        foreach($objs['res'] as $obj){
            array_push($arr,'[
                "'.$obj->id.'",
                "'.$obj->name.'"
              ]');
        }
        return '{"aaData": ['. implode(",",$arr).']}';
    }
    function ajaxsource(){
        $objs = $this->note->gets();
        echo $this->getajaxsource($objs);
    }
    function ajaxsourcebycategories(){
        $params = $this->input->post();
        $objs = $this->note->getsbycategory($params['category_id']);
        echo $this->getajaxsource($objs);
    }
}