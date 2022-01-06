# This script installs basic requirements for a new linux machine in my enviorment.
# Each line executes a different command.
#          Made by: James Branco (JTMB)


    # Update Host OS

        # Updates and installs OS then cleans leftover files (linux debian)
            apt-get update -y
            apt-get upgrade -y
            apt-get dist-upgrade -y
            apt-get autoremove -y
            apt-get autoclean -y
    
    # Install Packages

        # Install net tools
            sudo apt install net-tools -y
        # Install Ansible
            sudo apt install ansible -y

    # Install OpenSSH

        # Installs , enables openSSH , forwards required ports (22, 2002/tcp)
            sudo apt install openssh-server -y
            sudo ufw allow ssh
            sudo ufw allow 2002/tcp
        
        # Move SSH Config to default SSH config location and restart SSH service
            sudo mv /home/james/provision-new-env/sshd_config /etc/ssh/sshd_config
            systemctl restart sshd
        

    # Install Docker
        
        # Remove any old versons present
            sudo apt-get remove docker docker-engine docker.io containerd runc
            

        # setup docker repo
            sudo apt-get install \
                ca-certificates \
                curl \
                gnupg \
                lsb-release
        
        # Add Docker’s official GPG key
            curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg -y

        # Set up the stable repository
            echo \
            "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
            $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

        # Install Docker Engine
            sudo apt-get update
            sudo apt-get install docker-ce docker-ce-cli containerd.io -y
   
    # Get IPV4 address
        echo
        echo
        echo
        echo
        echo
        echo -------- IPV4 Address --------
        echo        
        ifconfig | grep 'inet 192.168.'
        echo
        echo
        echo
        echo
        echo