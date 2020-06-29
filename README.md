# Info

Clone of https://github.com/developersalliance/magento2-dockergento console tool for Magento implemented for Laravel

Full functionality of original repo is not implemented, and will be added as time goes on, currently supported OS is Linux, TODO Rest ;)

## Setup

Requirements:

- Docker
- Docker Compose

#### Install dockeravel console

1. Clone this repo

    ```
    git clone https://github.com/Vandeveon/dockeravel.git
    ```

2. Add `dockeravel` bin into your `$PATH`

    ```
    sudo ln -s $(pwd)/dockeravel/bin/dockeravel /usr/local/bin/
    ```

3. Open a new terminal tab/window and check that dockeravel works
    
    ```
    which dockeravel
    dockeravel
    ```


## Dockerize existing project

```
cd <your_project>
dockeravel setup
```

## Usage

#### Start Application

```
dockeravel start
dockeravel composer install
sudo vim /etc/hosts
// Add -> 127.0.0.1 <your-domain>
```
#### Enable/disable Xdebug

```
dockeravel debug-on
dockeravel debug-off
```