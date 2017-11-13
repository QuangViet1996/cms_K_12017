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
define('DB_NAME', 'wordpress');

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
define('AUTH_KEY',         'kEW)#MN$3zQCZVX}!z:Vj?ap{;`t^KDWWTK+eULe_EUOx#Rw<qA@/U&d.p fm:<B');
define('SECURE_AUTH_KEY',  'i*Pno(q6/McGWiXBD]]thJR(sH{+3uS]NL]Sa.yqbKo*/.^5EyIPD^ 3t8Td0AFj');
define('LOGGED_IN_KEY',    'd3(TbH>_6!+GKH_sR~+FDZSb Buv]FPs~hdaobVpp4fxXqa$5n p?]l=Q,~r._/7');
define('NONCE_KEY',        'f/,{L%5x6p9Z|EX/@sDt!Ql}!S{h.ye?iL{21|(=.N#=>J$gfV)4t2aX@tNqnEw;');
define('AUTH_SALT',        '~ux$F`P3_k4{lcOge/(VA6QtukWp`@x-W84gYm[,d=F7@[4=lKVJOU2m?xvvL6Vs');
define('SECURE_AUTH_SALT', '_<6&Qi`s[=%~tXJa3(CcO*P{9CWV>(X047}BCc2x}AM0;A0MYbOQW@m{~f-e%Sx~');
define('LOGGED_IN_SALT',   ']xjR)1p!;2`+SJuG.,Y%X[q~>[yil*h}`|QglT+-o}8t!r/y*,[oZKKgm~Sa1[G%');
define('NONCE_SALT',       ' crym_3M/K%e+PGT]Mf/^V@mSjur`bv%-b,asurNkZYYsyP^k9tq}&oA(G~ZaF5h');

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
