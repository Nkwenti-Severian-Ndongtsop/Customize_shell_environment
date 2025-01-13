# Customizing a shell prompt and environment variables

## Group members
- Tegha Romeo
- Nkwenti Severian

This repository contains two script used to customize the bash shell propmt.

## How to access and execute the files

- Install multipass and run an instance of ubuntu

```
sudo apt install snapd && snap install multipass && multipass launch docker --name ubuntu-vm
```
if you receive an error message after the long loading process just continue, is due to network issues

```
multipass shell ubuntu && docker run -it --name container ubuntu bash
```

you can use  this to check if the instance is running

```
multipass list
```

- Install the dependencies to clone the repository containing the script

```
apt install git && git clone https://github.com/Nkwenti-Severian-Ndongtsop/Customize_shell_environment.git
```

- Enter the directory and give executable permissions to the script 

```
cd Customize_shell_environment/ && chmod +x bashrc && chmod +x bash_profile
```

- Execute the files and observe the few changes\
Just this command

```
./bashrc
```

> Now you can test the functionalities below;

### .bash_profile
This script is used to configure the shell welcome message, which is displayed to the user

To achieve this, we used tools like:
- neofetch
- figlet

For more information you can reference the script

### .bashrc
This script is used to make life easy for the user, due to the fact that it contains some:
- aliases
- functions
- pre-installed functionalities

> aliases: is simply making a long command short, by assigning it to a short variable name holding the command as a value.

just to test a few aliases; we have\

**permissions**

> "chmod 644 \<file>" now becomes just "644 \<file>"

> "chmod 666 \<file>" now becomes just "666 \<file>"

> "chmod 777 \<file>" now becomes just "777 \<file>"

**ls comands**

> "ls -l" now becomes just "ll"

> "ls -la" now becomes just "la"

> "ls -ld" now becomes just "ld"

**git commands**

> "git status" now becomes just "gs"

> "git add" now becomes just "ga"

> "git commit -m" now becomes just "gc"

> "git push" now becomes just "gp"

I also included some basic commands too

> "clear" now becomes just "cl"

> "history" now becomes just "his"

### PS1 prompt

> '\[\033[1;31m\]\u@\h\[\033[1;31m\]@\[\033[1;33m\]\w\[\033[1;34m\] '

This prompt sets the username and hostname color to red\
and the working directory to yellow.

> We also made my "cd" command and "mkdir" to have auto ls functionality when used

> ## That is all about the set-up