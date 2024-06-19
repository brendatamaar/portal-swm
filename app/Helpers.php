<?php

// For add'active' class for activated route nav-item
function active_class($path, $active = 'active') {
  return call_user_func_array('Request::is', (array)$path) ? $active : '';
}

// For checking activated route
function is_active_route($path) {
  return call_user_func_array('Request::is', (array)$path) ? 'true' : 'false';
}

// For add 'show' class for activated route collapse
function show_class($path) {
  return call_user_func_array('Request::is', (array)$path) ? 'show' : '';
}

function get_next_key_array($array, $key)
{
    $keys = array_keys($array);
    $position = array_search($key, $keys);
    $nextKey = "1";
    if (isset($keys[$position + 1])) {
        $nextKey = $keys[$position + 1];
    }
    return $nextKey;
}