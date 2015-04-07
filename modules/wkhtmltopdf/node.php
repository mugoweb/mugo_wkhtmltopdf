<?php

use mikehaertl\wkhtmlto\Pdf;

$node = false;

if ( isset( $Params['node_id'] ) )
{
    $node = eZContentObjectTreeNode::fetch( $Params['node_id'] );
}
if ( isset( $Params['node_id'] ) && $node )
{
    $siteINI = eZINI::instance( 'site.ini' );
    $url = $siteINI->variable( 'SiteSettings', 'SiteURL' ) . '/content/view/full/' . $Params['node_id'];
    $pdf = new Pdf();
    $pdf->addPage( $url );
    $pdf->send( $node->attribute('name') . '.pdf' );
    eZExecution::cleanExit();
}
else
{
    $Result = array();
    $Result['path'] = array(
                            array(
                                    'url' => false
                                    ,'text' => 'Module not found'
                                 )
                           );
    $Result['content'] = $tpl->fetch( "design:error/kernel/20.tpl" );
}

?>
