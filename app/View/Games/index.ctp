
<h1>Juegos</h1>
<p><?php echo $this->Html->link("Crear Juego", array('action' => 'add')); ?></p>
<table>
    <tr>
        <th>Referencia</th>
        <th>Partido</th>
        <th>Editar</th>
    </tr>

<!-- Here's where we loop through our $posts array, printing out post info -->

<?php foreach ($partidos as $partido): ?>
    <tr>
        <td><?php echo $partido['Game']['id']; ?></td>
        <td>
            <?php
                echo $partido['Game']['macho']
            ?>
            vs
            <?php
                echo $partido['Game']['hembra']
            ?>
        </td>
        <td>
            <?php
                echo $this->Html->link(
                    'Editar',
                    array('action' => 'editar', $partido['Game']['id'])
                );
            ?>
        </td>
    </tr>
<?php endforeach; ?>

</table>