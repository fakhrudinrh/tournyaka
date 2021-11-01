<?php

namespace App\Controllers;

class Auth extends BaseController
{
    public function login()
    {

        $data = [
            'title' => 'Login | Tournyaka'
        ];

        return view('/pages/login', $data);
    }

    public function register()
    {

        $data = [
            'title' => 'Register | Tournyaka'
        ];

        return view('/pages/register', $data);
    }
}
