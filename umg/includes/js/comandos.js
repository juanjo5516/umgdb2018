$(document).ready(function(){
    $('#Nuevo').click(function(){
        CargarPagina('#contenedor','view/registro.php');
    })
})

function CargarPagina(contenedor,pagina){
    $(contenedor).load(pagina);
}

$(function(){
    $('a[title]').tooltip();
    });
    