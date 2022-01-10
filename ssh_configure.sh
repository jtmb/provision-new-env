 # Install OpenSSH

        # Installs , enables openSSH , forwards required ports (22, 2002/tcp)
            sudo apt update
            sudo apt install openssh-server -y
            sudo ufw allow ssh
            sudo ufw allow 2002/tcp
        
        # Move SSH Config to default SSH config location and restart SSH service
            sudo cp /home/james/provision-new-env/sshd_config /etc/ssh/sshd_config
            systemctl restart sshd
            
        # Add SSH dir
#            mkdir ~/.ssh
