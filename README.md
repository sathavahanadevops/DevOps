# DevOps

## Git Commands to Push Local Files to Remote Repository

Here are the Git commands to initialize a repository, link it to a remote, and push local changes.

```bash
# Initialize a new Git repository
git init

# Check the status of the working directory
git status

# Stage all changes
git add .

# Commit the changes with a meaningful message
git commit -m "Initial commit"

# Add the remote repository
git remote add origin https://github.com/sathavahanadevops/DevOps.git

# Verify the remote URL
git remote -v

# Create main branch  and switch to it
git checkout -b main

# Ensure the main branch exists and switch to it
git branch -M main

# Pull the latest changes (if any) while rebasing to avoid conflicts
git pull origin main --rebase

# Push the code to the remote repository
git push -u origin main
