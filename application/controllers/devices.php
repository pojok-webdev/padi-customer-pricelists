<?php
Class Devices extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->load->model('device');
        $this->load->model('service');
    }
    function index(){
        $data = array(
            'objs'=>$this->device->gets(),
            'categories' => $this->service->getCategories(),
            'breadline'=>array(
                0=>array('url'=>'/','label'=>'Devices'),
                1=>array('url'=>'/','label'=>'List'),
            )
        );
        $this->load->view('devices/index',$data);
    }
    function getajaxsource($objs){
        $arr = array();
        foreach($objs['res'] as $obj){
            array_push($arr,'[
                "'.$obj->kdproduct.'",
                "'.$obj->name.'",
                "'.$obj->description.'",
                "'.number_format($obj->price).'",
                "'.$obj->unit.'",
                "'.$obj->brand.'"
              ]');
        }
        return '{"aaData": ['. implode(",",$arr).']}';
    }
    function ajaxsource(){
        $objs = $this->device->gets();
        //echo json_encode($objs);
        echo $this->getajaxsource($objs);
    }
}