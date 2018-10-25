$(document).ready(function(){
    let paso = 0;
    let Data = $('#persona');
    $('#Nuevo').click(function(){
        CargarPagina('#contenedor','view/registro.php');
    })
    $('#Persona').click(function(){
        paso = paso + 1;
        if(paso == 1){

        }

     })

})

function CargarPagina(contenedor,pagina){
    $(contenedor).load(pagina);
}

$(function(){
    $('a[title]').tooltip();
    });


function VerificarActivado(){
    $(".active").each(function(index) {
        console.log($(this).attr('id'));
    });
}