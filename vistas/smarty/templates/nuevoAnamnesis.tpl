<form  id="anamnesi" method="post">
<div class="row">
<div class="col-md-12">


  <div class="row" style="background-color:white;
                          padding-top: 0px;
                          padding-right: 0px;
                          padding-bottom: 10px;
                          padding-left: 10px;
                          margin: 10px;">
  <div class="col-md-10" >
   <h2>Nuevo Anamnesis</h2>
  </div>
</div>

<table class="table table-striped header-fixed">
<tbody style="display: block;  overflow-y: auto;    float: left;height: 400px; ">
<tr style="">
<td style="width: 100%; float: left;" >
 
    
<input type="hidden" class="form-control" id="idPaciente"  name="idPaciente" value="{$idPaciente}">
<input type="hidden" class="form-control" id="nombre"      name="nombre"     value="{$nombre}">
<input type="hidden" class="form-control" id="idClub"      name="idClub"     value="{$club}">
<input type="hidden" class="form-control" id="idDivision"  name="idDivision" value="{$division}">

 <div class="row" style="background-color:lightgrey;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
                          
<h3> Antecedentes Familiares</h3>

<label class="col-sm-2">Obesidad: </label>
<div class="col-sm-2">
    <select name=obesidad class="form-control" id="obesidad" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Diabetes: </label>
<div class="col-sm-2"> 
<select name=diabetes class="form-control" id="diabetes" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Hipertensión: </label>
<div class="col-sm-2">
<select name=hipertension class="form-control" id="hipertension" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Enfermedad Cardíacas: </label>
<div class="col-sm-2">
<select name=cardiacas class="form-control" id="cardiacas" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Otras:</label>
<div class="col-sm-6">
<input type="text" class="form-control" id="otras" name="otras" value="" required  title="Ingrese otro antecedente. Solo letras">
</div>
</div>
 <div class="row" style="background-color:lightgrey;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">



<h3> Antecedentes Personales</h3>

<label class="col-sm-4">Padece Enfermedad Diagnosticada:</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="diagnosticada" id="diagnosticada" value="" required  title="Ingrese enfermedad diagnosticada. Solo letras">
</div>
<br><br><br>

<label class="col-sm-2">Toma medicamentos?:</label>
<div class="col-sm-2">
    <select name=medicamentos class="form-control" id="medicamentos" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>


<label class="col-sm-2">Comó los toma?:</label>
<div class="col-sm-6"><input type="text" class="form-control" id="toma" name="toma" value="" required  title="Ingrese como toma los medicamentos. Solo letras">
</div>

<br><br><br>


<label class="col-sm-2">Acidez:</label>
<div class="col-sm-2">
    <select name=acidez class="form-control" id="acidez" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Reflujo:</label>
<div class="col-sm-2">
    <select name=reflujo class="form-control" id="reflujo" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>


<label class="col-sm-2">Dolor Abdominal:</label>
<div class="col-sm-2">     
    <select name=abdominal class="form-control" id="abdominal" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>
<br><br><br>

<label class="col-sm-2">Constipación:</label>
<div class="col-sm-2">
    <select name=constipacion class="form-control" id="constipacion" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Diarrea:</label>
<div class="col-sm-2">
    <select name=diarrea class="form-control" id="diarrea" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Fuma:</label>
<div class="col-sm-2">
<select name=fuma class="form-control" id="fuma" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<br><br><br>
<label class="col-sm-2">Dietas Anteriores:</label>
<div class="col-sm-2">
    <select name=dietas class="form-control" id="dietas" required>
    <option label="NUNCA HICE" value="NUNCA HICE">NUNCA HICE</option>
    <option label="POSITIVOS" value="POSITIVOS">RESULTADOS POSITIVOS</option>
    <option label="NEUTRALES" value="NEUTRALES">RESULTADOS NEUTRALES</option>
    <option label="NEGATIVOS" value="NEGATIVOS">RESULTADOS NEGATIVOS</option>
</select>
</div>

 <label class="col-sm-2">Dolor:</label>
 <div class="col-sm-2">
     <select name=dolor class="form-control" id="dolor" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
    </select>
 </div>

 <label class="col-sm-2">Peso Máximo en los ultimos 5 años:</label>
 <div class="col-sm-2">
 <input type="number" step="0.001" min="0" max="350" class="form-control" id="pesomax" name="pesomax" value="" required  title="Ingrese el peso máximo.">
 </div>

<br><br><br><br> 
<label class="col-sm-2">Peso Mínimo en los ultimos 5 años:</label>
<div class="col-sm-2">
<input type="number" step="0.001" min="0" max="350" class="form-control" id="pesomin" name="pesomin" value="" required  title="Ingrese el peso mínimo.">
</div>


<label class="col-sm-2">Picotea?:</label>
<div class="col-sm-2">
    <select name=picotea class="form-control" id="picotea" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>
</div>

 <div class="row" style="background-color:lightgrey;
                          padding-top: 0px;
                          padding-right: 10px;
                          padding-bottom: 0px;
                          padding-left: 10px;
                          margin: 10px;">
<h3>Habitos Alimentarios</h3>

<label class="col-sm-2">Preferencias:</label>
<div class="col-sm-2">
    <select name=preferencias class="form-control" id="preferencias" required>
    <option label="DULCE" value="SI">DULCE</option>
    <option label="SALADO" value="NO">SALADO</option>
</select>
</div>

<label class="col-sm-2">Alimentos qué no le gustan:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="alimentosnogustan" name="alimentosnogustan" value="" required  title="Ingrese los alimentos qué no le gustan. Solo letras">
</div>

<label class="col-sm-2">Alimentos qué no tolera:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="alimentosnotolera" name="alimentosnotolera" value="" required  title="Ingrese los alimentos qué no tolera. Solo letras">
</div>

<br><br><br>
<label class="col-sm-2">Alimentos qué prefiere:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="alimentosprefiere" name="alimentosprefiere" value="" required  title="Ingrese los alimentos qué prefiere. Solo letras">
</div>

<label class="col-sm-2">Cocina?:</label>
<div class="col-sm-2">
<select name=cocina class="form-control" id="cocina" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Hace las compras?:</label>
<div class="col-sm-2">
<select name=compras class="form-control" id="compras" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<br><br><br>
<label class="col-sm-2">Horarios de Trabajo:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="horarios"  name="horarios" value="" required  title="Ingrese el horario de trabajo.">
</div>


<label class="col-sm-2">Desayuna?:</label>
<div class="col-sm-2">
    <select name=desayuna class="form-control" id="desayuna" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Almuerzo?:</label>
<div class="col-sm-2">
<select name=almuerza class="form-control" id="almuerza" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<br><br><br>
<label class="col-sm-2">Merienda?:</label>
<div class="col-sm-2">
    <select name=merienda class="form-control" id="merienda" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Cena?:</label>
<div class="col-sm-2">
<select name=cena class="form-control" id="cena" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Ingiere Suplementos?:</label>
<div class="col-sm-2">
<input type="text" class="form-control" id="suplementos" name="suplementos" value="" required  title="Ingrese los suplementos qué ingiere.">
</div>


<br><br><br>

<label class="col-sm-2">Hace Actividad Física?:</label>
<div class="col-sm-2">
    <select name=actividad class="form-control" id="actividad" required>
    <option label="SI" value="SI">SI</option>
    <option label="NO" value="NO">NO</option>
</select>
</div>

<label class="col-sm-2">Con qué frecuencia?:</label>
<div class="col-sm-3">
    <select name=frecuencia class="form-control" id="frecuencia" required>
    <option label="DIARIAMENTE" value="DIARIAMENTE">DIARIAMENTE</option>
    <option label="SEMANALMENTE" value="SEMANALMENTE">SEMANALMENTE</option>
    <option label="MENSUALMENTE" value="MENSUALMENTE">MENSUALMENTE</option>
    <option label="EXPORADICAMENTE" value="EXPORADICAMENTE">EXPORADICAMENTE</option>
</select>
</div>
</div>
</td>
</tr>
    </tbody>  
  </table>  

     
<div class="form-group" align="center">
    <input type="submit" id="btnCrearAnamnesis" name="btnCrearAnamnesis" class="btn btn-default" value="Crear" />
    <input  type="button" id="btnCancelarCrearAnamnesis" name="btnCancelarCrearAnamnesis" class="btn btn-default" value="Cancelar" />
    <input  type="reset" class="btn btn-default" value="Restablecer" />
</div>

</div>
</div>
</div>
</form>
<script type="text/javascript" src="js/anamnesis/funcionesAltaAnamnesisDinamico.js"></script>
