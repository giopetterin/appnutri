  <h2>Listado de Estudio Laboratorio</h2>

 <label>Paciente: {$nombre}</label>

  <p>Seleccione una Estudio para cualquier consulta:</p> 
  
<input type="hidden" class="form-control" id="idPaciente" value="{$paciente}">

  <table class="table table-striped header-fixed" style="width: 100%;">
      <tr style="">
      <th style="width: 33%;
    float: left;">Id</th>
        <th style="width: 33%;
    float: left;">Fecha de alta</th>
        <th style="width: 33%;
    float: left;">Accion</th>
      </tr>
    <tbody style="display: block;  overflow-y: auto;    float: left;height: 250px; width:100%">
      {foreach from=$estudios item=estu}
      <tr style="width: 100%;     display: inline-table;">
        <td style="width: 33%;    float: left;" > {$estu->id}    </td>
        <td style="width: 33%;    float: left;" > {$estu->fecha|date_format:" %d/%m/%y"}    </td>
        <td style="width: 33%;    float: left;"><img name="{$estu->id}" id="imgMostarActualizarEstudioLaboratorio" src="img/editar.png" align="JUSTIFY" style="cursor:pointer">
            <img name="{$estu->id}" id="imgMostrarEliminarEstudioLaboratorio"  src="img/eliminar.png" align="JUSTIFY" style="cursor:pointer"/>
            <img name="{$estu->id}" id="imgMostrarConsultarEstudioLaboratorio"  src="img/consultar.png" align="JUSTIFY" style="cursor:pointer"/>
        </td>
      </tr>
      {/foreach}
    </tbody>  
  </table>



