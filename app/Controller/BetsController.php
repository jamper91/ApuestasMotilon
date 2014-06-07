<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses('AppController', 'Controller');

/**
 * CakePHP BetsController
 * @author Developer
 */
class BetsController extends AppController {

    public function index($id) {
        
    }
    public function add() 
    {
        
        if ($this->request->is('post'))
        {
            if ($this->Bet->save($this->request->data)) 
            {
                $this->layout="impresora";
                $this->set("id",$this->Bet->id);
                $this->set("texto",$this->request->data["Bet"]["texto"]);
                $this->set("apuesta",$this->request->data["Bet"]["apuesta"]);
                $this->set("ganancia",$this->request->data["Bet"]["ganancia"]);
                $fecha=  getdate();
                $this->set("fecha",$fecha["mday"]."/".$fecha["mon"]."/".$fecha["year"]);
                $this->set("hora",$fecha["hours"].":".$fecha["minutes"]);
            }else{
                $this->Session->setFlash('Error al crear apuesta!');
                debug($this->Game->validationErrors);
            }
        }
        
    }

}
