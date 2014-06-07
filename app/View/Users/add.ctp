<h1>Crear Usuario</h1>
<?php
echo $this->Form->create('User');
echo $this->Form->input('email');
echo $this->Form->input('password');
echo $this->Form->end('Crear Usuario');
?>