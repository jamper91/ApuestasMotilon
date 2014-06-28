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

    public $components = array('RequestHandler');

    public function index($id) {
        
    }

    public function add() {

        if ($this->request->is('post')) {
            if ($this->Bet->save($this->request->data)) {
                $this->layout = "impresora";
                $this->set("id", $this->Bet->id);
                $this->set("texto", $this->request->data["Bet"]["texto"]);
                $this->set("apuesta", $this->request->data["Bet"]["apuesta"]);
                $this->set("ganancia", $this->request->data["Bet"]["ganancia"]);
                $fecha = getdate();
                $this->set("fecha", $fecha["mday"] . "/" . $fecha["mon"] . "/" . $fecha["year"]);
                $this->set("hora", $fecha["hours"] . ":" . $fecha["minutes"]);
            } else {
                $this->Session->setFlash('Error al crear apuesta!');
                debug($this->Bet->validationErrors);
            }
        }
    }

    public function getbets() {
        $this->layout = "webservice";
        //Obtengo una lista de todas las apuestas
        $options = array(
            "fields" => array(
                "Bet.id",
                "Bet.pagado"
            )
        );
        $datos = $this->Bet->find('all', $options);
        $this->set(
                array(
                    'datos' => $datos,
                    '_serialize' => array('datos')
        ));
    }

    /**
     * Esta funcion se encarga de habilitar una apuesta.
     * Esto ocurre porque puede ser que se de clic en crear apuesta, pero
     * no quedo bien, entonces si se da clic en imprimir, se crea, si no, no se valida
     * 
     */
    public function habilitarbet() {
        $this->layout = "webservice";
        if ($this->request->is('post')) {
            //debug(print_r($this->request->data));
            $this->Bet->id = $this->request->data["idBet"];
            //$this->Bet->id=$this->request->data["Bet"]["id"];
            $this->Bet->set("valido", "1");
            if ($this->Bet->save()) {
//                $this->Session->setFlash(__('La apuesta ha sido creada'));
                $datos=array("Resultado"=>"ok");
            } else {
//                $this->Session->setFlash(__('La apuesta no se ha podido crear'));
                $datos=array("Resultado"=>"Error");
                debug($this->Bet->validationErrors);
            }

            $this->set(
                    array(
                        'datos' => $datos,
                        '_serialize' => array('datos')
            ));
        }
    }

    public function pagar() {
        if ($this->request->is('post')) {
            //debug(print_r($this->request->data));
            $this->Bet->id = $this->request->data["Bet"]["id"];
            //$this->Bet->id=$this->request->data["Bet"]["id"];
            $this->Bet->set("pagado", "1");
            $fecha = date("Y-m-d H:i:s");
            $this->Bet->set("fecha_pago", $fecha);
            if ($this->Bet->save()) {
                $this->Session->setFlash(__('La apuesta ha sido pagada'));
            } else {
                $this->Session->setFlash(__('La apuesta no se ha podido actualizar'));
                debug($this->Bet->validationErrors);
            }
        }
    }

    public function pagados() {
        //Obtengo una lista de todas las apuestas
        $options = array(
            "fields" => array(
                "Bet.id",
                "Bet.pagado",
                "Bet.ganancia",
                "Bet.fecha",
                "Bet.fecha_pago",
                "Bet.apuesta"
            ),
            "conditions" => array(
                "Bet.pagado" => 1
            )
        );
        $datos = $this->Bet->find('all', $options);
        $this->set("datos", $datos);
    }

}
