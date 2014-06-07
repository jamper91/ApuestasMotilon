<script>
    function agregarApuesta(parley, equipo,tipo,id, encuentro)
    {
        var html = "";
        html += "<tr logro='"+parley+"' equipo='"+equipo+"' tipo='"+tipo+"' id='"+id+"' encuentro='"+encuentro+"'>";
        html += " <td>";
        html += tipo;
        html += " </td>";
        html += " <td>";
        html += id;
        html += " </td>";
        html += " <td>";
        html += equipo;
        html += " </td>";
        html += " <td>";
        html += parley;
        html += " </td>";
        html += "</tr>";
        $("#tblApuesta").append(html);
        calcularGanancias()
    }

    function calcularGanancias()
    {
        var total=0;
        var texto="";
        //Obtengo la apuesta
        var apuesta=$("#txtApuesta").val();
        total=apuesta;
        //Recorro cada fila de la tabla
        $("#tblApuesta tr").each(
                function()
                {
                    var parley=$(this).attr("logro");
                    if(parley)
                    {
                        var tipo=$(this).attr("tipo");
                        var id=$(this).attr("id");
                        var encuentro=$(this).attr("encuentro");
                        texto+="<tr>";
                        texto+="<td>";
                        texto+=tipo;
                        texto+="</td>";
                        texto+="<td>";
                        texto+=id;
                        texto+="</td>";
                        texto+="<td>";
                        texto+=encuentro;
                        texto+="</td>";
                        texto+="<td>";
                        texto+=parley;
                        texto+="</td>";
                        texto+="</tr>";
                        parley=parseInt(parley);

                        if(parley<0)
                        {

                            total=parseInt(parseFloat((total/Math.abs(parley))*100)+parseFloat(total));
                        }else{

                            total=parseInt(parseFloat((total*parley)/100)+parseFloat(total));
                        }
                    }
                    
                }
        );
        $("#BetTexto").val(texto);
        $("#BetApuesta").val(apuesta);
        $("#BetGanancia").val(total);
        $("#lblGanancias").text(total);

    }
</script>

<table>
    <thead>
        <tr>
            <th>
                Partido
            </th>
            <th>
                M. Line
            </th>
            <th>
                R. Line
            </th>
        </tr>
    </thead>
    <?php foreach ($partidos as $partido): ?>
        <tr>
            <td >
                <?= $partido["Game"]["macho"] ?><br>
                <?= $partido["Game"]["hembra"] ?><br>
                Empate
            </td>
            <td >
                <a onclick="agregarApuesta('<?= $partido["Game"]["parley1"] ?>', '<?= $partido["Game"]["macho"] ?>','ML',<?= $partido["Game"]["id"] ?>,'<?= $partido["Game"]["macho"]." Vs ".$partido["Game"]["hembra"] ?>')">
                    <?= $partido["Game"]["parley1"] ?>
                </a>    
                <br>
                <a onclick="agregarApuesta('<?= $partido["Game"]["parley2"] ?>', '<?= $partido["Game"]["hembra"] ?>','ML',<?= $partido["Game"]["id"] ?>,'<?= $partido["Game"]["macho"]." Vs ".$partido["Game"]["hembra"] ?>')">
                    <?= $partido["Game"]["parley2"] ?>
                </a>
                <br>
                <a onclick="agregarApuesta('<?= $partido["Game"]["parley3"] ?>', 'Empate','ML',<?= $partido["Game"]["id"] ?>,'<?= $partido["Game"]["macho"]." Vs ".$partido["Game"]["hembra"] ?>')">
                    <?= $partido["Game"]["parley3"] ?>
                </a>
            </td>
            <td >
                <a onclick="agregarApuesta('<?= $partido["Game"]["rline1"] ?>', '<?= $partido["Game"]["macho"] ?>','RL',<?= $partido["Game"]["id"] ?>,'<?= $partido["Game"]["macho"]." Vs ".$partido["Game"]["hembra"] ?>')">
                    +<?= $partido["Game"]["rlineg"] ?><?= $partido["Game"]["rline1"] ?>
                </a>    
                <br>
                <a onclick="agregarApuesta('<?= $partido["Game"]["rline2"] ?>', '<?= $partido["Game"]["hembra"] ?>','RL',<?= $partido["Game"]["id"] ?>,'<?= $partido["Game"]["macho"]." Vs ".$partido["Game"]["hembra"] ?>')">
                    -<?= $partido["Game"]["rlineg"] ?><?= $partido["Game"]["rline2"] ?>
                </a>
                <br>
                
            </td>

        </tr>
    <?php endforeach; ?>
</table>
<h1>Apuesta</h1>
<table id="tblApuesta">
    <tr>
        <td>
            Apuesta
        </td>
        <td colspan="3">    
            <input id="txtApuesta"  onchange="calcularGanancias()" type="number"/>
        </td>
    </tr>
    <tr>
        <td>
            Ganancia
        </td>
        <td colspan="3">
            <label id="lblGanancias">0</label>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <?php
                echo $this->Form->create('Bet', array('action' => 'add'));
                echo $this->Form->input('texto',array(
                    'type' => 'text',
                    'div' => array(
                        'style'=>'display:none'
                    )
                ));
                echo $this->Form->input('apuesta',array(
                    'type' => 'text',
                    'div' => array(
                        'style'=>'display:none'
                    )
                ));
                echo $this->Form->input('ganancia',array(
                    'type' => 'text',
                    'div' => array(
                        'style'=>'display:none'
                    )
                ));
                echo $this->Form->end('Crear Apuesta');
            
            ?>
        </td>
    </tr>



</table>

