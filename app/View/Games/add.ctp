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
echo $this->Form->input('goles_rline_macho',array(
    'type' => 'text',
    'label' => 'Goles RLINE Local'
));
echo $this->Form->input('alta',array(
    'type' => 'text',
    'label' => 'Logro Alta'
));
echo $this->Form->input('goles_alta',array(
    'type' => 'text',
    'label' => 'Goles Alta'
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
echo $this->Form->input('baja',array(
    'type' => 'text',
    'label' => 'Logro Baja'
));
echo $this->Form->input('goles_baja',array(
    'type' => 'text',
    'label' => 'Goles Baja'
));
echo $this->Form->input('parley3',array(
    'type' => 'text',
    'label' => 'Logro Empate MLINE'
));
echo $this->Form->input('fechaJuego',array(
    'type' => 'text',
    'label' => 'Fecha del Juego'
));
echo $this->Form->end('Crear Juego');
?>

<script>
    (function()
    {
        $('#GameFechaJuego').datetimepicker({
            dateFormat: "yy-mm-dd"
        });
    })();
    </script>