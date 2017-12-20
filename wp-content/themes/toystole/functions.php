<?php
/**
 * Main functions file
 *
 * @package WordPress
 * @subpackage Toy Stole
 */

/**
 * Initialize all the things.
 */
require get_template_directory() . '/inc/init.php';

/**
 * Note: Do not add any custom code here. Please use a child theme so that your customizations aren't lost during updates.
 * http://codex.wordpress.org/Child_Themes
 */
register_nav_menus( array(
    'footer' => __( 'Footer Menu', 'toy-stole' )
) );

// add_filter('woocommerce_account_menu_items','test_additem_myaccount');
// function test_additem_myaccount($menu_links){

//     $new = array('anyuniquetext123' => 'Gift for you' );

//     $menu_links = array_slice( $menu_links,0,1,true) +$new+array_slice($menu_links,1,NULL,true);
//     return $menu_links;
// }

// add_filter('woocommerce_get_endpoint_url','additem_endPoint',10,4);
// function additem_endPoint($url,$endpoint,$value,$permalink){
    
//     $user = wp_get_current_user();
//     echo $user->roles[0];
//     if($endpoint === 'anyuniquetext123'){
//         $url= site_url();
//     }
//     return $url;
// }

add_filter('woocommerce_login_redirect','wc_login',10,3);
function wc_login($redirect_to,$request,$user){
    // global $user;
    $redirect_to = admin_url();
    return $redirect_to;
}
    

add_action('wp_logout','logout_url');
function logout_url(){
    echo wp_get_current_user()->roles[0];
    if(wp_get_current_user()->roles[0] == 'vendor'){
        wp_redirect(site_url('my-account'));
        exit();
    }
}