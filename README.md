docker4eclipse

This is a repo to run Eclipse-Qxygen on Ubuntu from a Dockercontainer
To get this running, there are some pre-requests
- you need to have docker up and running
- docker should be added to sudo (sudo groupadd docker)
- you should belong to docker (sudo usermod -aG docker $USER) 
- you need to have gnome-terminal installed (sudo apt install gnome-terminal)

How to begin
- open a terminal 
- create new folder dockers under your user-home
- clone this repo by  

git clone https://github.com/wolf4git/docker4eclipse.git

How to proceed
Step into new folder docker4eclipse
- init.sh will do the rest of the job for you
- create folders ~/bin ~/bin/icons
- copy eclipse-oxygen-startup.sh to ~/bin
- build an Oxygen.desktop file based on your current user
- move the new Oxygen.desktop file to your desktop
- a new Icon should appear on your desktop

If everything is fine, then go ahead with the docker-container
- build.sh will build your container...this my take some time

Now you are read to click your desktop icon

How does it work:
- this Desktop-Command will call ~/bin/eclipse-oxygen-startup.sh 
- the eclipse-oxygen-startup.sh opens a gnome-terminal and calls  ~/dockers/docker4eclipse/run.sh
- ~/dockers/docker4eclipse/run.sh is the script to start the docker container


if everything got fine 
...then start: ./run.sh
eclipse-oxygen should start now und you can use it



