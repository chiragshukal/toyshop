<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'toystole');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'O!) Omx*3)4L{_W0<!dMOtgp*OcNLN~{[@^0L_/)b+V-Mwm1~#8+9<uYaw#68)fP');
define('SECURE_AUTH_KEY',  '(x0:0.&uD]Afsr!nzdeshe*j`q=SGoC,b+zO[-6vls>Z6dw4XjdV?$CXN`$L$0Hk');
define('LOGGED_IN_KEY',    'p}<S[&,1r(dc^Gxj.dtztN:*p8_Kdsz~a_Pn0B/5WPh?:vC.Oo*sq]nVy1)1]`fi');
define('NONCE_KEY',        ':uS ubyornblHKhCg=U.r? RQ(vC:I:eM`%y/o,T?.XZ|E+*9|c=2@[`ZuWJ`7j{');
define('AUTH_SALT',        'oKmMgh?9v=:E$uXG]h45@<-1L?:.^$F/k{@<% qPM+8n~K)c}}b&[Z|*C7X10aqg');
define('SECURE_AUTH_SALT', 'rNm-cthltR&{B~IR3hirdq br,(>m<v4AUh^dOoJu@[{$gsFHC,jKN?yBe=J8A1+');
define('LOGGED_IN_SALT',   ',5Y{x=wml;!*AWv1 *)/{5VXg+~Z:GGf8EG0=4h2`mUcwX:&f:+<k m5[w=_f;Vy');
define('NONCE_SALT',       'o Qc`Sgdxdie)[&4+[Rb[_3RSXGuxj]@-ASfLD.#f:0E)kd4r>}B|:(VvNrU9R/4');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
