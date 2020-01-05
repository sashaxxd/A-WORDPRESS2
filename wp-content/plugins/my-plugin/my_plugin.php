<?php
/*
Plugin Name: My Plugin
Plugin URI:
Description:
Author:
Version:
Author URI:
*/

register_activation_hook(__FILE__, 'my_plugin_activate');
register_deactivation_hook(__FILE__, 'my_plugin_deactivate');

function my_plugin_activate() {
    global $wp_rewrite;
    require_once dirname(__FILE__).'/my_plugin_loader.php';
    $loader = new MyPluginLoader();
    $loader->activate();
    $wp_rewrite->flush_rules( true );
}

function my_plugin_deactivate() {
    global $wp_rewrite;
    require_once dirname(__FILE__).'/my_plugin_loader.php';
    $loader = new MyPluginLoader();
    $loader->deactivate();
    $wp_rewrite->flush_rules( true );
}
