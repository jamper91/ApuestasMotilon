<h1>Crear Juego</h1>
<?php
echo $this->Form->create('Game');
echo $this->Form->input('macho',array(
    'type' => 'text',
    'label' => 'Local'
));
echo $this->Form->input('parley1',array(
    'type' => 'text',
    'label' => 'Logro Local MLINE'
));
echo $this->Form->input('rline1',array(
    'type' => 'text',
    'label' => 'Logro Local RLINE'
));
echo $this->Form->input('hembra',array(
    'type' => 'text',
    'label' => 'Visitante'
));
echo $this->Form->input('parley2',array(
    'type' => 'text',
    'label' => 'Logro Visitante MLINE'
));
echo $this->Form->input('rline2',array(
    'type' => 'text',
    'label' => 'Logro Visitante RLINE'
));
echo $this->Form->input('parley3',array(
    'type' => 'text',
    'label' => 'Logro Empate MLINE'
));
echo $this->Form->input('rline3',array(
    'type' => 'text',
    'label' => 'Logro Empate RLINE'
));
echo $this->Form->input('rlineg',array(
    'type' => 'text',
    'label' => 'Goles RLine'
));
echo $this->Form->end('Crear Juego');
?>