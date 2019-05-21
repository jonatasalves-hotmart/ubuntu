# nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

mkdir "${HOME}/.npm-packages"
echo "prefix=\${HOME}/.npm-packages" >> ~/.npmrc

echo "" >> ~/.bashrc
echo "NPM_PACKAGES=\"\${HOME}/.npm-packages\"" >> ~/.bashrc
echo "PATH=\"\$NPM_PACKAGES/bin:\$PATH\"" >> ~/.bashrc
echo "unset MANPATH" >> ~/.bashrc
echo "export MANPATH=\"\$NPM_PACKAGES/share/man:\$(manpath)\"" >> ~/.bashrc
source ~/.bashrc

sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,etc}

npm install -g yo

