<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', '$MYSQL_WP_NAME' );

/** MySQL database username */
define( 'DB_USER', '$MYSQL_USER' );

/** MySQL database password */
define( 'DB_PASSWORD', '$MYSQL_PASSWORD' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'NBC3ui}?yl~/a]Cb?`R+?3__K&4b@ZK+~#g7Rb:==XC:m81k(@cFyl<>>sKvjoo!');
define('SECURE_AUTH_KEY',  'XHGVlxQWM;]y]-qhJp@p&bV{4JMF!<2s^+no+63fS?|qR#ehNrx|+!+A8^5Mslg!');
define('LOGGED_IN_KEY',    'X2$-|ujIj?8{|z+z+liI)zs||Lx%p.;pTH%?vw)T3lv[E^ope.c2oHg0L||zeA$<');
define('NONCE_KEY',        'y1sNya`^14vX[<^b2<cj)rZ:H/q?cd9D$!Z2fS-aTq>q<dY>tBeq_;nIf*pso/N9');
define('AUTH_SALT',        ',itS6LdPZO|%:,933>1ka/iSnIlBD@L*_yGAzZ~9!_)!$_|`Ux~2AywP+?l`_t8|');
define('SECURE_AUTH_SALT', '4HLveq,i`WZn&EP^IDo f|H*U6$k3`a/iB]WaHCh<V-VVZ&CV=TfphbAZ#%/J6C|');
define('LOGGED_IN_SALT',   'm9TzN0n1-GZssDK*|[Sl)_=w^kW_|Mtv<tBK+)kB4&Z0_?/WU-K_o6bjFdoJHeO7');
define('NONCE_SALT',       'w{*>jpTGY<t,X-i;ioK9zLX|9JQ]g9uIMq^uMPj`oOLBp62HIKKS2F<$7:>j_>SD');


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
