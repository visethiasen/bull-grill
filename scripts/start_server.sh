!/bin/bash
# Removing Modules
# sudo rm -r /opt/datalogics/Zapier-integration/node_modules
# Reinstall Modules
sudo npm install -g --save /opt/datalogics/pdf-utility
sudo npm install -g --save /opt/datalogics/pdf-utility
sudo npm install -g @node-minify/cli @node-minify/uglify-js @node-minify/terser
node-minify --compressor terser --input '/opt/datalogics/pdf-utility/server.js' --output '/opt/datalogics/pdf-utility/server.js'