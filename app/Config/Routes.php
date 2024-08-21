<?php

use CodeIgniter\Router\RouteCollection;


/**
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// Route since we don't have to scan directories.
$routes->get('/', 'CustomerCrud::index');

// CRUD RESTful Routes
$routes->get('customer-list', 'CustomerCrud::index');
$routes->get('customer-form', 'CustomerCrud::create');
$routes->post('submit-customer', 'CustomerCrud::store');
$routes->get('edit-customer/(:num)', 'CustomerCrud::singleCustomer/$1');
$routes->post('update-customer', 'CustomerCrud::update');
$routes->get('delete-customer/(:num)', 'CustomerCrud::delete/$1');

$routes->get('banner-list', 'BannerCrud::index');
$routes->get('banner-form', 'BannerCrud::create');
$routes->post('submit-banner', 'BannerCrud::store');