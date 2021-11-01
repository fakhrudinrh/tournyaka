<?php

namespace App\Controllers;

use App\Models\DestinasiModel;

class Home extends BaseController
{
    protected $destinasiModel;
    public function __construct()
    {
        $this->destinasiModel = new DestinasiModel();
    }

    public function index()
    {
        $destinasi = $this->destinasiModel->findAll();
        $data = [
            'title' => 'Home | Tournyaka',
            'destinasi' => $destinasi
        ];
        return view('/pages/dashboard', $data);
    }

    public function tentang_kami()
    {
        $data = [
            'title' => 'Tentang Kami | Tournyaka'
        ];
        return view('/pages/tentang_kami', $data);
    }

    public function pangandaran_trivia()
    {
        $data = [
            'title' => 'Pangandaran’s Trivia | Tournyaka'
        ];
        return view('/pages/pangandaran_trivia', $data);
    }

    // public function wuop()
    // {
    //     $data = [
    //         'title' => 'WUOP | Tournyaka'
    //     ];
    //     return view('/pages/wuop', $data);
    // }

    // public function kuliner()
    // {
    //     $data = [
    //         'title' => 'Kuliner | Tournyaka'
    //     ];
    //     return view('/pages/kuliner', $data);
    // }

    // public function budaya()
    // {
    //     $data = [
    //         'title' => 'Budaya | Tournyaka'
    //     ];
    //     return view('/pages/budaya', $data);
    // }

    // public function hidden_gems()
    // {
    //     $data = [
    //         'title' => 'Hidden Gems | Tournyaka'
    //     ];
    //     return view('/pages/hidden_gems', $data);
    // }

    public function berangkat()
    {
        $data = [
            'title' => 'Pangandaran | Tournyaka'
        ];
        return view('/pages/berangkat', $data);
    }

    public function get_to_know()
    {
        $data = [
            'title' => 'Get To Know | Tournyaka'
        ];
        return view('/pages/get_to_know', $data);
    }
}
