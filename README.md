<p align="center">
    <h1 align="center">Laravel No Composer</h1>
</p> 

<p align="center">
    <img width="400" src="https://github.com/alifdarsim/laravel-no-composer/blob/master/public/laravel-no-composer.png" />
</p> 

<p align="center">
   
  <h3 align="center">📦 Basic laravel insallation if you dont have composer install or you just too lazy to install composer 📦</h3>

  <p align="center">
    </a>
    <a href="https://www.php.net">
        <img src="https://img.shields.io/badge/php-%3E%3D7.4-%23777BB4" />
    </a>
    <a href="https://laravel.com">
        <img src="https://img.shields.io/badge/laravel-8.83-%23EC4E3D" />
    </a>
  </p> 


</p>

## What is this?
A basic laravel setup with already composer install running. So you dont have to install any composer or sail (docker) to run laravel.

## Problem Statement
There is many time I need to create a Laravel project but there is no composer install on the machine. This happen many times, especially during new docker installation and it's feel like a sin to install composer on docker just to run it once and then never touch it again.

## Installation

**Prerequisite**

-   PHP >=7.4

To setup Laravel No Composer, first clone the project and change the directory.

```sh
git clone https://github.com/alifdarsim/laravel-no-composer.git my-project
cd my-project
```

Then follow the process using either and you will have a fully running basic Laravel installation.

1. Copy `.env.example` to `.env`:

    ```shell
    cp .env.example .env
    ```

1. Generate application key:

    ```shell
    php artisan key:generate
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
