1.
touch run-docker.sh
2. write the script
#!/bin/bash

# Set script to exit immediately if a command fails
set -e

echo "Building Docker image..."
docker build -t word-to-pdf-converter .

echo "Running Docker container..."
docker run -d -p 5000:5000 --name word-to-pdf-container word-to-pdf-converter

echo "Your application is running at: http://localhost:5000"

3. make the script executable:
chmod +x run-docker.sh


4. run the script:
./run-docker.sh

this will build our docker image and run our application in the container.
5. Verify the application
