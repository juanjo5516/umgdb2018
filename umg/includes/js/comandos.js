$(document).ready(function(){
    let paso = 0;
    let Data = $('#persona');
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