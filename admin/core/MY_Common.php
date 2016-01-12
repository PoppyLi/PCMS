<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function load_class_inc($class, $directory = 'libraries')
{
	static $_classes = array();

	// Does the class exist?  If so, we're done...
	if (isset($_classes[$class]))
	{
		return $_classes[$class];
	}

	$name = FALSE;

	// Look for the class first in the local application/libraries folder
	// then in the native system/libraries folder
	foreach (array(APPPATH,LIBS_PATH,BASEPATH) as $path)
	{
		if (file_exists($path.$directory.'/'.$class.'.php'))
		{
			$name = $prefix.$class;

			if (class_exists($name) === FALSE)
			{
				require($path.$directory.'/'.$class.'.php');
			}

			break;
		}
	}

	// Did we find the class?
	if ($name === FALSE)
	{
		exit('Unable to locate the specified class: '.$class.'.php');
	}

	// Keep track of what we just loaded
	is_loaded($class);
}

