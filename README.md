# Info

Clone of https://github.com/developersalliance/magento2-dockergento console tool for Magento implemented for Laravel

Full functionality of original repo is not implemented, TO DO Rest ;) 

## Setup

Requirements:

- Docker
- Docker Compose

### Install docker-compose-laravel console

1. Clone This repo

    ```
    git clone https://github.com/Vandeveon/docker-compose-laravel
    ```

2. Add `dcl` bin into your `$PATH`

    ```
    sudo ln -s $(pwd)/docker-compose-laravel/bin/dcl /usr/local/bin/
    ```

3. Open a new terminal tab/window and check that docker-compose-laravel works
    
    ```
    which dcl
    dcl
    ```


## Dockerize existing project

```
cd <your_project>
dcl setup
```

## Usage

### Start Application

```
dcl start
dcl composer install
sudo vim /etc/hosts
// Add -> 127.0.0.1 <your-domain>