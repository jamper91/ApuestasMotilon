<?php
echo $this->Html->link(
        $this->Html->image("editar.png", array("alt" => "Editar")) . "<br>Editar Juegos", "/games/", array('escape' => false)
);
?>