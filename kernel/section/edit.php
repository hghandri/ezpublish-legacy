<?php
//
// Created on: <27-Aug-2002 16:31:33 bf>
//
// Copyright (C) 1999-2003 eZ systems as. All rights reserved.
//
// This source file is part of the eZ publish (tm) Open Source Content
// Management System.
//
// This file may be distributed and/or modified under the terms of the
// "GNU General Public License" version 2 as published by the Free
// Software Foundation and appearing in the file LICENSE.GPL included in
// the packaging of this file.
//
// Licencees holding valid "eZ publish professional licences" may use this
// file in accordance with the "eZ publish professional licence" Agreement
// provided with the Software.
//
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING
// THE WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE.
//
// The "eZ publish professional licence" is available at
// http://ez.no/home/licences/professional/. For pricing of this licence
// please contact us via e-mail to licence@ez.no. Further contact
// information is available at http://ez.no/home/contact/.
//
// The "GNU General Public License" (GPL) is available at
// http://www.gnu.org/copyleft/gpl.html.
//
// Contact licence@ez.no if any conditions of this licencing isn't clear to
// you.
//

include_once( "lib/ezutils/classes/ezhttptool.php" );
include_once( "kernel/classes/ezsection.php" );
include_once( "kernel/common/template.php" );

$http =& eZHTTPTool::instance();
$SectionID =& $Params["SectionID"];
$Module =& $Params["Module"];

$section =& eZSection::fetch( $SectionID );

if ( $http->hasPostVariable( "StoreButton" ) )
{
    $section->setAttribute( 'name', $http->postVariable( 'Name' ) );
    $section->setAttribute( 'locale', $http->postVariable( 'Locale' ) );
    $section->store();
    $Module->redirectTo( $Module->functionURI( "list" ) );
    return;
}

$tpl =& templateInit();

$tpl->setVariable( "section", $section );

$Result = array();
$Result['content'] =& $tpl->fetch( "design:section/edit.tpl" );
$Result['path'] = array( array( 'url' => false,
                                'text' => ezi18n( 'kernel/section', 'Edit Section' ) ) );

?>
