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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'esafar' );

/** MySQL database password */
define( 'DB_PASSWORD', '1234' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'q{b7$8{a.}1qY+Vy,=BN1J9e6/&v~#LnpKuBCl= Rg9{0x-}gM~FMrTc,*`0Qd_0');
define('SECURE_AUTH_KEY',  '>Q%IAjkE-pl5gf<_:bfofGe4>$;%H?LlO(gmY4K~%QUjA>OTx%eT@I?>[}q`:Aua');
define('LOGGED_IN_KEY',    'xMIj3T-(JqpFN;=rFRI&`OF09)x%KZ9MM{S9nensp}@Eic=<$<weu7s^3*.gXipF');
define('NONCE_KEY',        'G8|J${i3m+cGj;cVMs6oJL1IEFWm?E/,<:s*lG!M:qeAVt2MhB~CoC$T^NP;qpu-');
define('AUTH_SALT',        'S9NqU1I~o =Q<{pXtN^zA|=59R<RrkUE[Ny;xZJMH$NlS(1iB=c-(wq+R/N48`FZ');
define('SECURE_AUTH_SALT', '@h8Luxzu`[yJ(@||9U@)dW|tNPpa1K%L+F&U2)%uc=k0}6DAI dCmI2b;,%HDTY^');
define('LOGGED_IN_SALT',   '5tbT4Z841K@CNWLh*^!$m86k8bVy~:CR10- 3Iahe~t+Q,$Mo]6@O+0HT4.d,A&J');
define('NONCE_SALT',       'bNzBDb7]GLWD| { 4Gi!7b&o6F*@6[ySJf3Po dl`[-c92/3H7p*IM0=_@iH%*%#');

/**#@-*/

/**
 * WordPress Database Table prefix.
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

 /* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
