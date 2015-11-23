<?php
/*
 * http://zf2-app.localhost:1996
 * Listen 1996
 <VirtualHost *:1996>
    ServerName zf2-app.localhost
    DocumentRoot D:/xampp/htdocs/Zf2Unitest/public
    <Directory D:/xampp/htdocs/Zf2Unitest/public>
        DirectoryIndex index.php
        AllowOverride All
        Order allow,deny
        Allow from all
        <IfModule mod_authz_core.c>
        Require all granted
        </IfModule>
    </Directory>
</VirtualHost>
 */


chdir(dirname(__DIR__));
define('DOMAIN_DIR'	, "zf2-app.localhost");
define('APPLICATION_PATH23', realpath(dirname(__DIR__)));
define('PUPLICH_HTML_DATA', APPLICATION_PATH23.'/public_html/data/uploads/user/'); //E:\xampp\htdocs\clipmediagroup.eu/public_html/data/uploads/user
define('WEBPATH_NO_HTTP', $_SERVER['SERVER_NAME']);
define('WEBPATH', 'http://'.$_SERVER['SERVER_NAME'].':1996');

define('CACHE', dirname(__DIR__).'/cache');

/*
//develop
define('DEV_SERVER_NAME'	, "clipmediagroup.eu.localhost"); //sub menu s1.data
define('S1_DATA_DEVELOP', "http://s1.data.".WEBPATH_NO_HTTP); //sub menu s1.data
define('S1_DATA_DEVELOP_IMAGE'	, S1_DATA_DEVELOP.'/data/upload/images/'); //sub menu s1.IMAG
define('S1_DATA_DEVELOP_VIDEO'	, S1_DATA_DEVELOP.'/data/upload/videos/'); //sub menu s1.VIDEO

//server

define('S1_DATA_SERVER'	, "http://s1.data.".WEBPATH_NO_HTTP); //sub menu s1.data
define('S1_DATA_SERVER_IMAGE'	, S1_DATA_SERVER.'/data/upload/images/'); //sub menu s1.IMAG
define('S1_DATA_SERVER_VIDEO'	, S1_DATA_SERVER.'/data/upload/videos/'); //sub menu s1.VIDEO
*/

define('LIBRARY_PATH', realpath(APPLICATION_PATH23 . '/library/'));
define('PUBLIC_PATH'	, realpath(APPLICATION_PATH23 . '/public_html'));
define('TEMPLATE_PATH'	, realpath(PUBLIC_PATH . '/templates'));
define('DIR_UPLOAD_NEW'	, realpath(PUBLIC_PATH.'/uploadnews'));
//default.png
define('FILES_PATH'	, realpath(PUBLIC_PATH . '/files'));
define('MZIMG_PATH'	, realpath(PUBLIC_PATH . '/images'));


define('IP_SERVER_TEST', '127.0.0.1');
define('IP_SERVER_TEST2', '192.168.5.101:1993');
define('IP_SERVER_TEST3', '192.168.10.11');


define('CPANEL_USR', 'host3');
define('CPANEL_PASS', '');
define('CPANEL_IP', '212..198');
define('CPANEL_DOMAIN_PRIMARY', '@host3.vn');  
define('IP_VIDEO_PRIMARY', '212.1');

define('PUBLIC_ALAT', realpath(APPLICATION_PATH23 . '/public/html/'));

define('UPLOAD_PATH_IMG', ROOT_PATH.'/public_html/uploads/');

// ip nao hien dang duoc chon de upload video
// neu khac  IP_VIDEO_PRIMARY la video duoc upload len server khac
