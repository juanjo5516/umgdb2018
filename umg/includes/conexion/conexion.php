<?php 

class Conexion {
    private $db = 'oci:dbname=localhost/xe';
    private $user = 'jjolon';
    private $password = '123456';

    public function Conectar(){
        try{
            $base = new PDO($this->db, $this->user, $this->password);
            $base->exec('SET CARACTER SET utf8');
            if ($base) {
                return $base;
            }
        }catch(Exception $e){
            echo "Error de conexion: " .$e->getMessage();
        }
    }
}
?>


