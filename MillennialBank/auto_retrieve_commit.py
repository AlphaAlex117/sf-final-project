import os
import time
import subprocess

path_to_sfdx = "C:\Program Files\sf\\bin\sfdx.cmd"

# Function to deploy source to Salesforce org using SFDX
def deploy_source():
    default_folder = os.path.join("force-app", "main", "default")

    try:
        print("Deploying source to org...")
        subprocess.run([path_to_sfdx, "force:source:deploy", "-p", default_folder], check=True)
        print("Source deployed successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error deploying source: {e}")

# Function to retrieve source from Salesforce org using SFDX
def retrieve_source():
    manifest_path = os.path.join("manifest", "package.xml")
    
    if not os.path.isfile(manifest_path):
        print(f"Error: {manifest_path} does not exist. Please check the path.")
        return
    
    try:
        print("Retrieving source from org...")
        subprocess.run([path_to_sfdx, "force:source:retrieve", "-x", manifest_path], check=True)
        print("Source retrieved successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error retrieving source: {e}")

# Function to commit and push changes to GitHub
def commit_and_push():
    try:
        print("Committing changes...")
        subprocess.run(["git", "add", "."], check=True)
        subprocess.run(["git", "commit", "-m", "Automated commit"], check=True)
        subprocess.run(["git", "push"], check=True)
        print("Changes pushed to GitHub.")
    except subprocess.CalledProcessError as e:
        print(f"Error committing or pushing changes: {e}")

# Main loop to run every 15 minutes
def main():
    while True:
        deploy_source()  # Deploy the source before retrieval
        retrieve_source()
        commit_and_push()
        print("\033[1;32m Waiting for 15 minutes...")
        time.sleep(900)  # Wait for 900 seconds (15 minutes)

if __name__ == "__main__":
    main()