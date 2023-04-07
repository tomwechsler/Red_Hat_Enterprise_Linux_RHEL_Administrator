

sudo echo "1.0.0.1 cloudflare" >> /etc/hosts # Fails as redirection from shell 

echo "1.0.0.1 cloudflare" | sudo tee -a /etc/hosts 



Using the command tee output is sent both the console and the file. As a
command it can be elevated with sudo.