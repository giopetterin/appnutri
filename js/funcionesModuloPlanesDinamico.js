$(document).ready(function() {

    var MaxInputs       = 20; //Número Maximo de Campos
    var contenedor       = $("#contenedor"); //ID del contenedor
    var AddButton       = $("#agregarCampo");


    //var x = número de campos existentes en el contenedor
    var x = $("#contenedor div").length + 1;
    var FieldCount = x-1; //para el seguimiento de los campos

    $(AddButton).click(function (e) {

      $.ajax({
                        type: "POST",
                        url: "http://"+ambito+"/appnutri/?modulo=planes&accion=traerGraficaRecordatorio",
                        data: $("#plan").serialize(), 
                        success: function(data) {

                                $('#graficaRecordatorio').html(data);

                                                }
      });

        if(x <= MaxInputs) //max input box allowed
        {
            FieldCount++;
            //agregar campo
            $(contenedor).append(
                                '<div class="added">'+
                                '<select name="tipoDeIngesta[]" id="tipoDeIngesta[]">'+
                                '<option  value="desayuno">DESAYUNO</option>'+
                                '<option  value="mediaManiana">MEDIA MAÑANA</option>'+
                                '<option  value="merienda">MERIENDA</option>'+
                               '<option  value="colacion">COLACIÓN</option>'+
                               '<option " value="cena">CENA</option>'+
                                '</select>'+  
                                '<select name="alimento[]" id="alimento[]">'+
      '<option label="leche" value="lacteosEnteros">LACT. ENTE.</option>'+
      '<option label="harina" value="lacteosDescremados">LACT. DESC.</option>'+
      '<option label="cereales" value="quesos">QUESOS</option>'+
     '<option label="huevos" value="huevos">HUEVOs</option>'+
      '<option label="carneGrasa" value="carneGrasa">CARNE GRASA</option>'+
      '<option label="carneMagra" value="carneMagra">CARNE MAGRA</option>'+
      '<option label="vegetalesA" value="vegetalesA">VEGET. A</option>'+
      '<option label="vegetalesB" value="vegetalesB">VEGET. B</option>'+
      '<option label="vegetalesC" value="vegetalesC">VEGET. C</option>'+
      '<option label="frutas" value="frutas">FRUTAS</option>'+
      '<option label="frutasSecas" value="frutasSecas">FRUT. SECAS</option>'+
      '<option label="granosCereales" value="granosCereales">GRAN./CERE</option>'+
      '<option label="legumbres" value="legumbres">LEGUMBRES</option>'+
      '<option label="panSinGrasa" value="panSinGrasa">PAN SIN GRASA</option>'+
      '<option label="pangalle" value="pangalle">PAN / GALLE</option>'+
      '<option label="carboGrasa" value="carboGrasa">CARBOGRASAS</option>'+
      '<option label="azucar" value="azucar">AZUCAR</option>'+
      '<option label="dulcesMielMermelada" value="dulcesMielMermelada">DULCES</option>'+
      '<option label="gaseosasJugo" value="gaseosasJugo">GASE./JUGO</option>'+
      '<option label="aceite" value="aceite">ACEITE</option>'+
      '<option label="cremaMantecaMayo" value="cremaMantecaMayo">CREMA</option>'+
      '</select>'+

                                
                                '<input type="text" name="cantidad[]" id="cantidad[]" placeholder="gramos" size="2"  />'+
                                '<input type="time" name="hora[]" id="hora[]" placeholder="hora" size="2"/>'+
                                '<a href="#" class="eliminar">&times;</a>'+
                                '</div>');
            x++; //text box increment





        }
        else {alert("Numero de maximo de Ingestas alcanzado!")}

        return false;
    });

    $("body").on("click",".eliminar", function(e){ //click en eliminar campo
        if( x > 2 ) {
            $(this).parent('div').remove(); //eliminar el campo
            x--;
      $('#graficaRecordatorio').html('<img src="/appnutri/img/loading.gif"/>');
      
      $.ajax({
                        type: "POST",
                        url: "http://"+ambito+"/appnutri/?modulo=planes&accion=traerGraficaRecordatorio",
                        data: $("#plan").serialize(), 
                        success: function(data) {

                                $('#graficaRecordatorio').html(data);

                                                }
      });

        }



        //return false;

    });


$("#plan").submit(function(e) {

    $.ajax({
           type: "POST",
           url: "http://"+ambito+"/appnutri/?modulo=planes&accion=crearPlan",
           data: $("#plan").serialize(), // serializes the form's elements.
           success: function(data)
           {
               $('#central').html(data); 
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});
                

});