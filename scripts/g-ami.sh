!/bin/bash
# Removing Company Info
sudo rm -r /opt/datalogics/pdf-utility/scripts
sudo rm -r /opt/datalogics/pdf-utility/tests
sudo rm /opt/datalogics/pdf-utility/appspec.yml
sudo rm /opt/datalogics/pdf-utility/Jenkinsfile
sudo rm /opt/datalogics/pdf-utility/middleware/auth_key.js
sudo rm -r /opt/datalogics/pdf-utility/samples

# Removal of .env
sudo rm /opt/datalogics/pdf-utility/.env

# Removing SSH Keys
sudo rm -r /home/centos/.ssh
sudo rm -r /root/.ssh

# Removal of pm2 logs
sudo rm -r ~/.pm2/logs/*
sudo rm -r /opt/home/centos/.pm2/logs/*

# Removal of ssh logs
sudo rm /var/log/secure



# Clear contents of publics folder
sudo rm -r /opt/datalogics/public/*
sudo rm -r /tmp/*




# Removal of pm2 logs
sudo rm -r ~/.pm2/logs/*
sudo rm -r /opt/home/centos/.pm2/logs/*


# String Change for AMI
sed -i 's|https://pdfcloud-api-staging.datalogics.com|YOUR_DOMAIN_HERE|' ../config/settings.js

node-minify --compressor terser --input '../server.js' --output '../server.js'
node-minify --compressor terser --input '../apis/libCLO.js' --output '../apis/libCLO.js'
node-minify --compressor terser --input '../apis/libi2.js' --output '../apis/libi2.js'
node-minify --compressor terser --input '../apis/licXF1.js' --output '../apis/licXF1.js'
node-minify --compressor terser --input '../apis/libMCL.js' --output '../apis/libMCL.js'
node-minify --compressor terser --input '../apis/libSCL.js' --output '../apis/libSCL.js'
node-minify --compressor terser --input '../apis/reversestring.js' --output '../apis/reversestring.js'
node-minify --compressor terser --input '../apis/security.js' --output '../apis/security.js'
node-minify --compressor terser --input '../apis/utility.js' --output '../apis/utility.js'
node-minify --compressor terser --input '../apis/pg_database.js' --output '../apis/pg_database.js'
node-minify --compressor terser --input '../objects/profiles.js' --output '../objects/profiles.js'
node-minify --compressor terser --input '../controllers/pdfController.js' --output '../controllers/pdfController.js'
node-minify --compressor terser --input '../controllers/mergedPdfController.js' --output '../controllers/mergedPdfController.js'
node-minify --compressor terser --input '../controllers/splitPdfController.js' --output '../controllers/splitPdfController.js'
node-minify --compressor terser --input '../controllers/compressedPdfController.js' --output '../controllers/compressedPdfController.js'
node-minify --compressor terser --input '../controllers/index.js' --output '../controllers/index.js'
node-minify --compressor terser --input '../controllers/htmlController.js' --output '../controllers/htmlController.js'
node-minify --compressor terser --input '../controllers/pdfaController.js' --output '../controllers/pdfaController.js'
node-minify --compressor terser --input '../controllers/bmpController.js' --output '../controllers/bmpController.js'
node-minify --compressor terser --input '../controllers/jpgController.js' --output '../controllers/jpgController.js'
node-minify --compressor terser --input '../controllers/pngController.js' --output '../controllers/pngController.js'
node-minify --compressor terser --input '../controllers/gifController.js' --output '../controllers/gifController.js'
node-minify --compressor terser --input '../controllers/tifController.js' --output '../controllers/tifController.js'
node-minify --compressor terser --input '../controllers/zipController.js' --output '../controllers/zipController.js'
node-minify --compressor terser --input '../controllers/2img.js' --output '../controllers/2img.js'
node-minify --compressor terser --input '../controllers/linearizedPdfController.js' --output '../controllers/linearizedPdfController.js'

# Removing History
cat /dev/null > ~/.bash_history && history -c && exit
