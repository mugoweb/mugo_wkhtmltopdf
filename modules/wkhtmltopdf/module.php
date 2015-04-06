<?php
$Module = array( 'name' => 'wkhtmltopdf' );

$ViewList = array();

$ViewList[ 'node' ] = array( 'script' => 'node.php',
                                    'params' => array( 'node_id' ),
                                    'functions' => array( 'node' ) );

$FunctionList = array();
$FunctionList[ 'node' ] = array();

?>
