#!/bin/bash

one(){
    ip addr show dev enp0s8 | grep "inet " | awk '{print $2}' | tr "/" " " | \
            awk '{print $1}'
}

all(){
 ip addr | grep "inet " | awk '{print $2}' | tr "/" " " | awk '{print $1}'
}


ip=$( one || all )

readme=$( for i in $ip; do echo -e "\thttp://${i}:1080/"; done )
aglio=$( for i in $ip; do echo -e "\thttp://${i}:10080/"; done )
drakov=$( for i in $ip; do echo -e "\thttp://${i}:10180/"; done )
petserv=$( for i in $ip; do echo -e "\thttp://${i}:20080/"; done )
petcli=$( for i in $ip; do echo -e "\thttp://${i}:20080/"; done )



cat <<EOF
    API Blueprint: For Fun and Profit

    Readme is at:
${readme}

    Aglio (APIB Documetnation) at:
${aglio}

    Drakov (APIB Mock server) at:
${drakov}

    Petstore JS web service at:
${petserv}
        /vagrant/server/js/

    Petstore Springboot client at:
        /vagrant/impl/javacli/


    Base box up! To run the workshop code do:
    1. 'vagrant ssh' to ssh into the box
    2. 'docker ps' shows the runing containers

EOF
