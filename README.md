# Skam Test Project / Docker  [back - PHP, front - PNPM]

This project consists of a backend using WordPress or Laravel and a frontend using PNPM. It provides a Docker-based development and deployment environment for your application.

[DOCS](https://alexbednov.work/posts/2260)

## Author

This project was created by Alex Bednov. Visit [alexbednov.work](https://alexbednov.work) for more information.

## Prerequisites

- Docker
- Docker Compose

## Requirements

- **GNU Make:** The Makefile provided with this project assumes you have GNU Make installed on your system. If you're using macOS, you can install it via Homebrew: `brew install make`. On Linux, you might already have it installed by default.

- **Docker and Docker Compose:** This project relies on Docker and Docker Compose for creating and managing containers. Make sure you have both Docker and Docker Compose installed on your system.

- **Node.js and PNPM:** For building and managing the frontend, you'll need Node.js and PNPM (Package Manager for Node.js) installed. You can install Node.js from the official website or through a package manager like `npm`. To install PNPM, you can use `npm install -g pnpm`.

- **PHP Composer:** If you plan to use the Laravel backend, you'll need PHP Composer to manage PHP packages. You can install Composer following the instructions on the [Composer website](https://getcomposer.org/download/).

- **Web Browser:** To access and test your application, you'll need a web browser. You can use popular browsers like Chrome, Firefox, Safari, etc.

- **Text Editor or IDE:** You'll need a text editor or integrated development environment (IDE) to edit code and configuration files. There are many options available, such as Visual Studio Code, Sublime Text, Atom, and more. Choose the one that suits your preferences.

- **Git:** You'll need Git installed on your system if you want to clone the project repository, track changes, and collaborate with others.

- **Terminal or Command Prompt:** You'll need a terminal or command prompt to run the provided Makefile commands and interact with Docker containers.

- **Optional: Homebrew (macOS):** If you're using macOS, you can use Homebrew to install some of the dependencies mentioned above. Install Homebrew from the [official website](https://brew.sh/) and then use it to install the required tools.

Note: The specific requirements might vary depending on your operating system and development environment.

## Setup

1. Clone this repository:

    ```bash
    git clone https://github.com/ibednov/docker-laravel-wordpress-node-npm-pnpm-template.git
    ```

    ```bash
    cd docker-laravel-wordpress-node-npm-pnpm-template
    ```

2. **Optional:** If you want to customize the project name used in Docker files, you can replace all instances of `skam-test` with your desired project name. This can be done in `docker-compose.yml`, `Dockerfile.Backend.PHP`, `Dockerfile.Frontend.PNPM`, `package.json`, `composer.json`, and other relevant files. If you change the container name, **make sure to also update the container names in the `Makefile` commands accordingly**.

3. **Optional:** If you want to customize the ports used by the containers, you can modify the `docker-compose.yml` file. For example, you can change the frontend port to `8080` and the backend port to `8081`. Update the `ports` section of the respective services:

    ```yaml
    services:
      skam-test-back:
        # ...
        ports:
          - "8081:80"
        # ...

      skam-test-front:
        # ...
        ports:
          - "8080:5173"
        # ...
    ```

4. Build the Docker images:

    ```bash
    make build
    ```

5. Start the containers:

    ```bash
    make up
    ```

6. Access the frontend at <http://localhost:8080> and the backend at <http://localhost:8081>.

## Commands

- **Build Docker Images:**

    ```bash
    make build
    ```

- **Build Docker Images (Force Rebuild):**

    ```bash
    make build-force
    ```

- **Stop Containers:**

    ```bash
    make stop
    ```

- **Start Containers:**

    ```bash
    make up
    ```

- **Restart Containers:**

    ```bash
    make restart
    ```

- **Access Backend Shell:**

    ```bash
    make o-back
    ```

- **Access Frontend Shell:**

    ```bash
    make o-front
    ```

- **Add All Files to Git:**

    ```bash
    make git
    ```

- **Clear Docker System:**

    ```bash
    make clear
    ```

- **Run Database Migrations:**

    ```bash
    make migrate
    ```

- **Seed the Database:**

    ```bash
    make seed
    ```

- **Dump Autoload Files:**

    ```bash
    make dump
    ```

- **Backend Deployment:**

    ```bash
    make bdeploy
    ```

- **Frontend Deployment:**

    ```bash
    make fdeploy
    ```

- **Full Deployment (Backend and Frontend):**

    ```bash
    make deploy
    ```

## Additional Information

- **Backend:** WordPress or Laravel (See `DockerFile.Backend.PHP` for backend Docker setup)
- **Frontend:** PNPM (See `Dockerfile.Frontend.PNPM` for frontend Docker setup)

## Author

This project was created by Alex Bednov. Visit [alexbednov.work](https://alexbednov.work) for more information.

## License

This project is licensed under the MIT License.
