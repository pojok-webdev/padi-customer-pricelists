<?php
Class Tickets extends CI_Controller{
    function __construct(){
        parent::__construct();
    }
    function index(){
        $data['objs'] = $this->ticket->gets();
        $data['categories'] = $this->service->getCategories();
        $this->load->view('tickets/index',$data);
    }
    function getajaxsource($objs){
        $arr = array();
        foreach($objs['res'] as $obj){
            array_push($arr,'[
                "'.$obj->product_id.'",
                "'.$obj->name.'",
                "Price:'.$obj->price.'<p>Discount:'.$obj->discount.'",
                "'.$obj->description.'",
                "'.$obj->unit.'",
                "dura"
              ]');
        }
        return '{"aaData": ['. implode(",",$arr).']}';
    }
    function ajaxsource(){
        $objs = $this->ticket->gets();
        echo $this->getajaxsource($objs);
    }
    function ajaxsourcebycategories(){
        $params = $this->input->post();
        $objs = $this->ticket->getsbycategory($params['category_id']);
        echo $this->getajaxsource($objs);
    }
    function testgetsbycategory(){
        $params = $this->input->post();
        echo $this->ticket->getsbycategory($params['category']);
    }
    function insert(){
        $this->load->model('ticketcause');
        $this->load->model('client');
        $data['ticketcauses'] = $this->ticketcause->getCauses();
        $data['clients'] = $this->client->getClients();
        $this->load->view('ticket-insert/index',$data);
    }
    function save(){
        $params = $this->input->post();
        $mainparams = array('cause_id'=>$params['cause_id'],'ticketstart'=>$params['ticketstart'],'ticketend'=>$params['ticketend']);
        $ticket_id = $this->ticket->save($mainparams,'ticketmains');
        $clientparams = array('ticket_id'=>$ticket_id,'client_site_id'=>1);
        $this->ticket->save($clientparams,'ticketclients');
    }
    function clients(){
        $params = $this->input->post();
        $this->load->model('client');
        $objs = $this->client->getbyname($params['name']);
        $out = '<ul id="country-list">';
        foreach($objs['res'] as $obj){
            $out.= '<li onClick="selectCountry(\''.$obj->id.'\',\''.$obj->name.'\')">'.$obj->name.'</li>';
        }
        $out.= '</ul>';
        echo $out;
    }
    function getclientsites(){
        $client_id = $this->uri->segment(3);
        $this->load->model('client');
        $objs = $this->client->getClientSiteByClientId($client_id);
        $out = '<ul id="sites">';
        foreach($objs['res'] as $obj){
            $out.= '<li>'.$obj->address.'</li>';
        }
        $out.= '</ul>';
    }
}