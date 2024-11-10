<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wordpress' );

/** Database password */
define( 'DB_PASSWORD', 'wordpress_pwd' );

/** Database hostname */
define( 'DB_HOST', '{WP_DB_HOST}' );

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
define('AUTH_KEY',         ')X%=`|f2+>J4eSkw9f^4:3_$6we*vHN^ZP)I*%4 QpYOTB.71x3-(4X0H`j/!w7h');
define('SECURE_AUTH_KEY',  'Nu|*i4=el/wCD*m;/ZP:1%>q-u.#[G!yqGeF1)W=lwUg*-.Z$P28u!XKSlC$>x7=');
define('LOGGED_IN_KEY',    ']~j[pUNx+lBDUt0Y%IJSH9xo@LGj.1bfOCwQb[Ud=En~91l[|A+l3[[C5|aT|uUK');
define('NONCE_KEY',        'v_KUAh7Z-ZoCqxX>*|8aled!k#kJMIb4V,C9MIATRCq,aI]4rXMrK4-[wA@aF-[`');
define('AUTH_SALT',        '(qA`mu$:XN^>w4yY^~3a=>V<GLxtF2Z]yEU=82lB5b1==<Ar#]x(|k]$#p?H1p[6');
define('SECURE_AUTH_SALT', '4QMD6B;y$ji8|*GVwKli;,mW~3XPytxJ|r/F4@gHOtKuJ=SoGyh-5gZ %ii`@0YK');
define('LOGGED_IN_SALT',   'AJToq9{2k~&hHf#tT)l&A;`w$+1YHV[b.x#Rrg|^=|%dHHNe~f^NaXKXqk+`nI_<');
define('NONCE_SALT',       'PcJi 61Fr1TJ5|dsw2 (}N;nv+%6.}BslP -8w>+C/KZu%r)j7{Ho@kRk|[lN6Uk');
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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
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
