Create a GitHub Repository:

Go to GitHub and log in to your account.
Click the "+" icon in the top right corner and choose "New repository."
Fill in the repository name, add a description if you'd like, and initialize this repository with a README. Then, click "Create repository."
Clone the Repository:

Open a terminal or command prompt on your local machine.

Clone the GitHub repository to your local machine:

bash
Copy code
git clone https://github.com/your-username/your-repository.git
Replace your-username with your GitHub username and your-repository with the name of the repository you just created.

Move Terraform Files:

Move your Terraform files (.tf files) and the .gitlab-ci.yml file into the local repository folder:

bash
Copy code
mv /path/to/your/terraform/files/* /path/to/cloned/repo/
mv /path/to/your/.gitlab-ci.yml /path/to/cloned/repo/
Commit and Push Changes:

Navigate to the cloned repository:

bash
Copy code
cd /path/to/cloned/repo/
Add and commit your changes:

bash
Copy code
git add .
git commit -m "Initial commit: Add Terraform files and GitLab CI configuration"
Push the changes to GitHub:

bash
Copy code
git push origin main
Replace main with the name of your main branch if it's different.

Verify on GitHub:

Go back to your GitHub repository page and refresh. You should see your Terraform files and the .gitlab-ci.yml file.

## Run the app 
kubectl create -f k8s-specifications/



To remove them, run:


kubectl delete -f k8s-specifications/


* A front-end web app in [Python](/vote) which lets you vote between two options
* A [Redis](https://hub.docker.com/_/redis/) which collects new votes
* A [.NET](/worker/) worker which consumes votes and stores them in…
* A [Postgres](https://hub.docker.com/_/postgres/) database backed by a Docker volume
* A [Node.js](/result) web app which shows the results of the voting in real time