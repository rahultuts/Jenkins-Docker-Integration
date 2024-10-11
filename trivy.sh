yum install vim wget tar -y 

vim /etc/yum.repos.d
[trivy]
name=Trivy repository
baseurl=https://aquasecurity.github.io/trivy-repo/rpm/releases/$releasever/$basearch/
gpgcheck=0
enabled=1

save and exit 

sudo yum -y update
sudo yum -y install trivy


============================================

by shell script


#!/bin/bash

# Define the version and architecture
TRIVY_VERSION="0.56.2"
ARCH="Linux-s390x"

# Download the Trivy tarball
wget https://github.com/aquasecurity/trivy/releases/download/v${TRIVY_VERSION}/trivy_${TRIVY_VERSION}_${ARCH}.tar.gz

# Extract the tarball
tar -xzf trivy_${TRIVY_VERSION}_${ARCH}.tar.gz

# Move the Trivy binary to /usr/local/bin
sudo mv trivy /usr/local/bin/

# Make the binary executable
sudo chmod +x /usr/local/bin/trivy

# Clean up
rm trivy_${TRIVY_VERSION}_${ARCH}.tar.gz

# Verify the installation
trivy --version

echo "Trivy version ${TRIVY_VERSION} installed successfully!"




------------------------------------------------------------

Instructions:
Copy the script above into a file, for example install_trivy.sh.
Make the script executable:
bash
Copy code
chmod +x install_trivy.sh
Run the script:
bash
Copy code
./install_trivy.sh

