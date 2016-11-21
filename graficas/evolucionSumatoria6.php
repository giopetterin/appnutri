<?php 

require_once ('jpgraph/src/jpgraph.php');
require_once ('jpgraph/src/jpgraph_line.php');
require_once('../modelos/conexion.php');
require_once('../modelos/medicionesAntropometricas.php');


$idPaciente=$_REQUEST['idPaciente'];

$medi = new MedicionesSimples('medicionessimples');
$mediarray=$medi->Find("paciente ='".$idPaciente."' order by fecha");

foreach ($mediarray as $valor) {
	
    $datos[]=$valor->sumatoria6;
    $fecha = explode("-",$valor->fecha);

    $etiquetas[]=$fecha[2]."/".$fecha[1]."/".$fecha[0];

}



// Setup the graph
$graph = new Graph(600,600);

$graph->SetScale("textint");

$theme_class= new UniversalTheme;
$graph->SetTheme($theme_class);

$graph->title->Set("Evolucion de Sumatoria 6 Pliegues");

$graph->SetBox(false);
$graph->ygrid->SetFill(false);
$graph->yaxis->HideLine(false);
$graph->yaxis->HideTicks(false,false);
$graph->yaxis->HideZeroLabel();

$graph->xaxis->SetTickLabels($etiquetas);

// Create the plot
$p1 = new LinePlot($datos);
$graph->Add($p1);


// Use an image of favourite car as marker
$p1->mark->SetType(MARK_IMG,'punto.jpg',0.8);
$p1->SetColor('#aadddd');
$p1->value->SetFormat('%d');
$p1->value->Show();
$p1->value->SetColor('#55bbdd');


$graph->Stroke();




?>  