<?php 
namespace App\Controllers;
use App\Models\EventModel;
use CodeIgniter\Controller;

class BannerCrud extends Controller
{
    public function index(){
        $bannerModel = new EventModel();
        $data['customer'] = $bannerModel->orderBy('id', 'ASC')->findAll();
        return view('banner/banner_view', $data);
    }

    public function create(){
        return view('banner/add_banner');
    }

    public function store() {
        $bannerModel = new EventModel();
        $count = count($bannerModel->orderBy('id', 'ASC')->findAll());
        if($count<=9){
            $data = [
                'name' => $this->request->getVar('name'),
                'phone' => $this->request->getVar('phone'),
                'idcard' => $this->request->getVar('idcard'),
            ];
            $bannerModel->insert($data);
        }
        $data['customer'] = $bannerModel->orderBy('id', 'ASC')->findAll();
        header("Location: ".base_url()."banner-list");
        die();
    }  
}