<p align="center">
    <h1 align="center">Laravel No Composer</h1>
</p> 

<p align="center">
    <img width="400" src="https://raw.githubusercontent.com/alifdarsim/laravel-no-composer/master/banner.png" />
</p> 

<p align="center">
   
  <h3 align="center">📦 Basic laravel insallation if you dont have composer install or you just too lazy to install composer 📦</h3>

  <p align="center">
    </a>
    <a href="https://www.php.net">
        <img src="https://img.shields.io/badge/php-%3E%3D7.4-%23777BB4" />
    </a>
    <a href="https://laravel.com">
        <img src="https://img.shields.io/badge/laravel-8.83 | 9.34 -%23EC4E3D" />
    </a>
  </p> 


</p>

## What is this?
A basic laravel setup with already composer install running. So you dont have to install any composer or sail (docker) to run laravel.

## Problem Statement
There is many time I need to create a Laravel project but there is no composer install on the machine or I just cant install composer due to sudo issue. 

This happen many times, especially during new docker installation and it's feel like a sin to install composer on docker just to run it once and then never touch it again.

## Installation

**Prerequisite**

| Version | PHP(*)  |
|---------|---------|
| Laravel 8 | 7.3-8.1 |
| Laravel 9 | 8.0-8.1 |
| Laravel 10 | 8.1     |

* To install, use <b>CURL</b> method as below
```sh
bash <(curl -s https://raw.githubusercontent.com/alifdarsim/laravel-no-composer/master/curl.sh)
```

* Or if you dont have curl installed, use <b>wget</b> instead
```sh
bash <(wget -qO- https://raw.githubusercontent.com/alifdarsim/laravel-no-composer/master/curl.sh)
```

After the installation finish, run below command to run laravel

1. Generate application key:

    ```shell
    cd your-project-name
    ```

2. Start the server (local):

    ```shell
    php artisan serve
    ```

Voilaaa! You just install laravel without using composer or laravel sail. After this, you can continue the normal laravel setup installation such as 'php artisan migrate'

## Support

<p>You can show your support by starring this project.</p>
<a href="https://github.com/alifdarsim/laravel-no-composer/stargazers">
  <img src="https://img.shields.io/github/stars/alifdarsim/laravel-no-composer?style=social" alt="Github Star">
</a>

## Contribute

To contribute, see the [contributing guide](https://github.com/alifdarsim/laravel-no-composer/blob/master/CONTRIBUTING.md)

## License

[MIT License](https://github.com/alifdarsim/laravel-no-composer/blob/main/LICENSE)
