import os
import time
import subprocess

# Function to retrieve source from Salesforce org using SFDX
def retrieve_source():
    abs_path = os.path.abspath(os.getcwd())
    manifest_path = os.path.join(abs_path, "manifest", "package.xml")

    if not os.path.isfile(manifest_path):
        print(f"Error: {manifest_path} does not exist. Please check the path.")
        return
    
    try:
        print("Retrieving source from org...")
        subprocess.run([r"C:\\Program Files\sf\bin\sfdx.cmd", "force:source:retrieve", "-x", manifest_path], check=True)
        print("Source retrieved successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error retrieving source: {e}")

# Function to commit and push changes to GitHub
def commit_and_push():
    try:
        print("Committing changes...")
        subprocess.run(["git", "add", "."], check=True)
        subprocess.run(["git", "commit", "-m", "Automated Backup"], check=True)
        subprocess.run(["git", "push"], check=True)
        print("Changes pushed to GitHub.")
    except subprocess.CalledProcessError as e:
        print(f"Error committing or pushing changes: {e}")

# Main loop to run every 5 minutes
def main():
    while True:
        retrieve_source()
        commit_and_push()
        print("\033[1;32m Waiting for 5 minutes...")
        time.sleep(300)  # Wait for 300 seconds (5 minutes)

if __name__ == "__main__":
    main()