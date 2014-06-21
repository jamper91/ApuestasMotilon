<h1>Editar Juego</h1>
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
echo $this->Form->input('goles_rline_macho',array(
    'type' => 'text',
    'label' => 'Goles RLINE Local'
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
echo $this->Form->input('goles_rline_hembra',array(
    'type' => 'text',
    'label' => 'Goles RLINE Visitante'
));
echo $this->Form->input('parley3',array(
    'type' => 'text',
    'label' => 'Logro Empate MLINE'
));
echo $this->Form->input('visible',array(
    'type' => 'number',
    'label' => 'Visible'
));
echo $this->Form->end('Crear Juego');
?>