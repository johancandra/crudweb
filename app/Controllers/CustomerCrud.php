<?php 
namespace App\Controllers;
use App\Models\CustomerModel;
use CodeIgniter\Controller;

class CustomerCrud extends Controller
{
    public function index(){
        $customerModel = new CustomerModel();
        $data['customer'] = $customerModel->orderBy('id', 'ASC')->findAll();
        return view('customer/customer_view', $data);
    }

    public function create(){
        return view('customer/add_customer');
    }

    public function store() {
        $customerModel = new CustomerModel();
        $data = [
            'name' => $this->request->getVar('name'),
            'address' => $this->request->getVar('address'),
            'phone' => $this->request->getVar('phone'),
            'idcard' => $this->request->getVar('idcard'),
            'buytime' => $this->request->getVar('buytime'),
        ];
        $customerModel->insert($data);
        $data['customer'] = $customerModel->orderBy('id', 'ASC')->findAll();
        header("Location: ".base_url()."customer-list");
        die();
    }

    public function singleCustomer($id = null){
        $customerModel = new CustomerModel();
        $data['customer_obj'] = $customerModel->where('id', $id)->first();
        return view('customer/edit_customer', $data);
    }

    public function update(){
        $customerModel = new CustomerModel();
        $id = $this->request->getVar('id');
        $data = [
            'name' => $this->request->getVar('name'),
            'address' => $this->request->getVar('address'),
            'phone' => $this->request->getVar('phone'),
            'idcard' => $this->request->getVar('idcard'),
        ];
        $customerModel->update($id, $data);
        $data['customer'] = $customerModel->orderBy('id', 'ASC')->findAll();
        header("Location: ".base_url()."customer-list");
        die();
    }

    public function delete($id = null){
        $customerModel = new CustomerModel();
        $data['customer'] = $customerModel->where('id', $id)->delete($id);
        header("Location: ".base_url()."customer-list");
        die();
    }    
}