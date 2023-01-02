<p align="center">
    <h1 align="center">Laravel No Composer</h1>
</p> 

<p align="center">
    <img width="400" src="https://raw.githubusercontent.com/alifdarsim/laravel-no-composer/master/banner.png" />
</p> 

<p align="center">
   
  <h3 align="center">📦 Installing Laravel without using composer or laravel sail 📦</h3>

  <p align="center">
    </a>
    <a href="https://www.php.net">
        <img src="https://img.shields.io/badge/php-%3E%3D7.4-%23777BB4" />
    </a>
    <a href="https://laravel.com">
        <img src="https://img.shields.io/badge/laravel-8.83 | 9.48 -%23EC4E3D" />
    </a>
  </p> 


</p>


## Problem Statement
There is many time I need to create a Laravel project but there is no composer install on the machine or I just cant install composer due to sudo issue. 

This happen many times, especially during new docker installation and it's feel like a sin to install composer on a docker just to run it once and then never touch it again.

## What is this?
A bash script to install laravel with vendor folder pre-installed. So you dont have to install any composer or sail (docker) to run laravel.


## Prerequisite

| Version | PHP(*)  |
|---------|---------|
| Laravel 8 | 7.3-8.1 |
| Laravel 9 | 8.0-8.1 |
| Laravel 10 | 8.1     |

## Installation

To start installing Laravel, run below *curl* or *wget* command
   
- If you prefer to use CURL
```sh
bash <(curl -s https://raw.githubusercontent.com/alifdarsim/laravel-no-composer/master/curl.sh)
```

- Or you want wget instead
```sh
bash <(wget -O - https://raw.githubusercontent.com/alifdarsim/laravel-no-composer/master/wget.sh)
```

You will be promped to name your Laravel project and choose Laravel version to install
```sh
Enter your Laravel project name (eg: my-project)
 > my-project
Choose Laravel version to install:
   Laravel 8.x
 > Laravel 9.x
   Laravel 10.x
```


After the installation finish, run below command to run your laravel project
   
```sh
cd my-project
php artisan serve
```

Voilaaa! You just success installing laravel without using composer or laravel sail. After this, you can continue the normal laravel setup installation such as **php artisan migrate**

## Troubleshooting

**Q**: I got an error when using this package.

**A**: Most error happen due to missing PHP dependencies required by Laravel itself. Simply make sure you install all of the PHP extension needed depends on your PHP version as shown <a href="https://stackoverflow.com/a/40816033/13228282">here</a> 

## Screenshot

<img width="500" src="https://raw.githubusercontent.com/alifdarsim/laravel-no-composer/master/screenshot.png" />


## Support

<p>You can show your support by starring this project or buy me some coffee</p>
<a href="https://github.com/alifdarsim/laravel-no-composer/stargazers">
  <img src="https://img.shields.io/github/stars/alifdarsim/laravel-no-composer?style=social" alt="Github Star">
</a>

<a href="https://www.buymeacoffee.com/alifdarsim" style="border-radius:50%" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-yellow.png" alt="Buy Me A Coffee" height="41" width="174"></a>



## Contribute

To contribute, see the [contributing guide](https://github.com/alifdarsim/laravel-no-composer/blob/master/CONTRIBUTING.md)

## License

[MIT License](https://github.com/alifdarsim/laravel-no-composer/blob/main/LICENSE)
