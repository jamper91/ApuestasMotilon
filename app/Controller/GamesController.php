<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses('AppController', 'Controller');

/**
 * CakePHP GamesController
 * @author Developer
 */
class GamesController extends AppController {

    public function index($id) {
        
    }
    public function add()
    {
        if ($this->request->is('post')) 
        {
            if ($this->Game->save($this->request->data)) {
                // Set a session flash message and redirect.
                $this->Session->setFlash('Juego Creado creado!');
                //return $this->redirect('/recipes');
            }else{
                $this->Session->setFlash('Error al crear juego!');
                debug($this->Game->validationErrors);
            }
            
        }
    }
    
    public function listar() 
    {
        $partidos=  $this->Game->findAllByVisible("1");
        $this->set("partidos",$partidos);
    }

}
