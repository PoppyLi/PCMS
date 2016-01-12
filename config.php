<?php
# 数据库 
define('DB_TYPE'   , 'mysql');
define('DB_HOST'   , 'localhost');
define('DB_USER'   , 'root');
define('DB_PASS'   , '');
define('DB_NAME'   , 'jht_zdkf');
define('DB_PREFIX' , 'boc_');

# 全局URL路径
define('GLOBAL_URL'  , 'http://'.$_SERVER['HTTP_HOST'].'/'); 
// 提供给后台做链接用的
define('SITE_URL'  ,   GLOBAL_URL.'index.php/'); 
define('STATIC_URL'  , GLOBAL_URL.'static/');
define('UPLOAD_URL'  , GLOBAL_URL.'upload/');
define('ADMINER_URL' , GLOBAL_URL.'admin/');
define('MOBILE_URL'  , GLOBAL_URL.'mobile/');

// // 快捷提供给JS
define('IMG_URL'     , STATIC_URL.'img/');

# 引用绝对路径PATH定义
define('ROOT'        , dirname(__FILE__).'/');
define('LIBS_PATH'   , ROOT.'libs/');
define('CI_PATH'     , ROOT.'libs/ci/');
define('STATIC_PATH' , ROOT.'static/');
define('UPLOAD_PATH' , ROOT.'upload/');

# 可忽略 当css|js改变时替换本地缓存,将false 替换为 'v[1,2...]' 
define('STATIC_V','v2');

# 密钥设置;设置多个 用于 md5/sha1(hmac.value.time) 外部数据输入输出
# 提供给 app 的config 的 encryption_key 
define('HMACPWD','SA1S2D3F4G5H6J7K8L9'); // PASSWD and cookie
define('HMAC','SA1S2D3F4G5H6J7K8L8');    // 提供第三方API验证使用

/*
 * 开发模式 
 * 配置项目运行的环境，该配置会影响错误报告的显示和配置文件的读取。
 * development
 * testing
 * production
 * 使用 error_reporting();
 */
define('ENVIRONMENT', 'development');

// PHP 5 尝试加载未定义的类
// 挂载本地库 其他 core Controller
// 使用第三方报错工具可能会出现未加载的现象出现使
function __autoload($class)
{
	if(strpos($class, 'CI_') !== 0)
	{
		if (file_exists(APPPATH . 'core/'. $class . EXT)) {
			@include_once( APPPATH . 'core/'. $class . EXT );
		}elseif(file_exists(LIBS_PATH . 'core/'. $class . EXT)) {
			@include_once( LIBS_PATH . 'core/'. $class . EXT );
		}
	}
}