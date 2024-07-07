# base-django-devcontainer
This is a devcontainer build that prepares a system for developing a django website with VSCode and the devcontainers extension.

By default it was just the django libraries along with the python libraries to interact with a postgres database.

Using a test driven development (TDD) style, I ran into an issue where I was unable to test some functionality of the site. To perform those tests, the selenium package is necessary. The Dockerfile now installs chrome, and the chromedriver webdriver for selenium. Finally selenium has been added to the requirements.txt that is used to install the packages needed for site development.

Created a script for quick project preparation off this base.

# Usage
In order to use this, either clone the repository, then change the name in devcontaner.json, along with the postgres password in the docker-compose yaml. Or use the script project_setup.sh.

The script project_setup.sh takes a single argument, the name of the new project to develop. The script will break if you try to use a new project name with a space in it.

```
./project_setup.sh new_project
```
