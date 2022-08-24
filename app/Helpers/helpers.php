<?php
if (!function_exists('setActive')) {

    /**
     * setActive
     *
     * @param mixed $path
     * @return void
     */
    function setActive($path)
    {

        return request()->is($path) ? ' active' : '';
    }
}
if (!function_exists('setShow')) {

    /**
     * setActive
     *
     * @param mixed $path
     * @return void
     */
    function setShow($path)
    {

        return request()->is($path) ? 'show' : '';
    }
}
if (!function_exists('setHead')) {

    /**
     * setActive
     *
     * @param mixed $path
     * @return void
     */
    function setHead($path)
    {

        return request()->is($path . '*')  ? ' active' : '';
    }
}
if (!function_exists('setTrue')) {

    /**
     * setActive
     *
     * @param mixed $path
     * @return void
     */
    function setTrue($path)
    {

        return request()->is($path . '*') ? 'true' : 'false';
    }
}
