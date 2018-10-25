<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="includes/css/bootstrap.css">
    <link rel="stylesheet" href="includes/css/registro.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <title>Registrar Persona</title>
</head>
<body>
   
<form id="registro">  

     <div class="board">
        <div class="board-inner">
            <ul class="nav nav-tabs" id="myTab">
                <div class="liner"></div>
                <li  id="Persona">
                    <a href="#persona" data-toggle="tab" title="persona">
                        <span class="round-tabs one">
                            <i class="fas fa-user"></i>
                        </span> 
                    </a>
                </li>
                <li>
                    <a href="#profile" data-toggle="tab" title="profile">
                     <span class="round-tabs two">
                            <i class="fas fa-user"></i>
                     </span> 
                    </a>
                 </li>
                 <li>
                     <a href="#messages" data-toggle="tab" title="bootsnipp goodies">
                     <span class="round-tabs three">
                        <i class="fas fa-gift"></i>
                     </span> </a>
                </li>
                <li>
                    <a href="#settings" data-toggle="tab" title="blah blah">
                         <span class="round-tabs four">
                            <i class="fas fa-comments"></i>
                         </span> 
                     </a>
                </li>     
                <li>
                    <a href="#doner" data-toggle="tab" title="completed">
                         <span class="round-tabs five">
                            <i class="fas fa-check"></i>
                         </span> </a>
                </li>
            </ul>
        </div>
        <div class="tab-content">
            <div class="tab-pane fade in active " id="persona">
                <div class="row"> 
                    <div class="col-sm-6"> 
                        <div class="card"> 
                            <div class="card-body"> 
                                <input name="caja" id="caja" />
                                <h5 class="card-title">Special title treatment</h5> 
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p> 
                                <a href="#" class="btn btn-primary">Go somewhere</a> 
                            </div> 
                        </div> 
                    </div> 
                    <div class="col-sm-6"> 
                        <div class="card"> 
                            <div class="card-body"> 
                                <h5 class="card-title">Special title treatment</h5> 
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p> 
                                <a href="#" class="btn btn-primary">Go somewhere</a> 
                            </div> 
                        </div> 
                    </div> 
                    <div>
                        <a href="" ><input type="button" name="anterior" value="Anterior"></a>
                        <a href="#profile" data-toggle="tab"><input type="button" name="adelantar" value="Siguiente"></a>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade in " id="profile">
                <h3 class="head text-center">Create a Bootsnipp<sup>™</sup> Profile</h3>
                    <p class="narrow text-center">
                              Lorem ipsum dolor sit amet, his ea mollis fabellas principes. Quo mazim facilis tincidunt ut, utinam saperet facilisi an vim.
                    </p>   
                    <p class="text-center">
                        <a href="" class="btn btn-success btn-outline-rounded green"> create your profile <span style="margin-left:10px;" class="glyphicon glyphicon-send"></span></a>
                    </p>    
             </div>
            <div class="tab-pane fade" id="messages">
                 <h3 class="head text-center">Bootsnipp goodies</h3>
                    <p class="narrow text-center">
                              Lorem ipsum dolor sit amet, his ea mollis fabellas principes. Quo mazim facilis tincidunt ut, utinam saperet facilisi an vim.
                    </p> 
                    <p class="text-center">
                        <a href="" class="btn btn-success btn-outline-rounded green"> start using bootsnipp <span style="margin-left:10px;" class="glyphicon glyphicon-send"></span></a>
                    </p>
            </div>
            <div class="tab-pane fade" id="settings">
                <h3 class="head text-center">Drop comments!</h3>
                    <p class="narrow text-center">
                              Lorem ipsum dolor sit amet, his ea mollis fabellas principes. Quo mazim facilis tincidunt ut, utinam saperet facilisi an vim.
                    </p>  
                    <p class="text-center">
                        <a href="" class="btn btn-success btn-outline-rounded green"> start using bootsnipp <span style="margin-left:10px;" class="glyphicon glyphicon-send"></span></a>
                    </p>
            </div>
            <div class="tab-pane fade" id="doner">
                <div class="text-center">
                    <i class="img-intro icon-checkmark-circle"></i>
                </div>
                <h3 class="head text-center">thanks for staying tuned! <span style="color:#f48260;">♥</span> Bootstrap</h3>
                <p class="narrow text-center">
                        Lorem ipsum dolor sit amet, his ea mollis fabellas principes. Quo mazim facilis tincidunt ut, utinam saperet facilisi an vim.
                </p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</form>


<script src="includes/js/comandos.js"></script>
</body>
</html>