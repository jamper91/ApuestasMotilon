
<h1>Apuestas</h1>
<!--<p><?php echo $this->Html->link("Crear Juego", array('action' => 'add')); ?></p>-->
<table>
    <tr>
        <th>Referencia</th>
        <th>Apostado</th>
        <th>Juegos</th>
        <th>Eliminar</th>
    </tr>

<!-- Here's where we loop through our $posts array, printing out post info -->
    
<?php foreach ($datos as $partido): ?>
    <tr>
        <td><?php echo $partido['Bet']['id']; ?></td>
        <td>
            <?php
                echo number_format($partido['Bet']['apuesta'])
            ?>
            
            
        </td>
        <td>
            <table>
            <?php
                echo $partido['Bet']['texto']
            ?>
                </table>
        </td>
        <td>
            <?php
                echo $this->Html->link(
                    'Eliminar',
                    array('action' => 'eliminar', $partido['Bet']['id'])
                );
            ?>
        </td>
    </tr>
<?php endforeach; ?>

</table>