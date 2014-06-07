<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses('AppController', 'Controller');

/**
 * CakePHP UserController
 * @author Developer
 */
class UserController extends AppController {

    public function index($id) {
        
    }
    
    public function add()
    {
        if ($this->request->is('post')) 
        {
            if ($this->User->save($this->request->data)) {
                // Set a session flash message and redirect.
                $this->Session->setFlash('Usuario creado!');
                //return $this->redirect('/recipes');
            }
            
        }
    }
    

}
