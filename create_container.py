import argparse
import docker
import os

parser = argparse.ArgumentParser(description="Container creator")
parser.add_argument('--image', type=str, help='Name of the base image')
parser.add_argument('--image_name', type=str, help='Name of the image')
parser.add_argument('--work_dir', type=str, help='Working directoty')


args = parser.parse_args()


#Client
client = docker.from_env()

dockerfile_template = f"""
# Use a custom base image
FROM { args.image }

WORKDIR { args.work_dir if args.work_dir else "app" }

#Copy all required files
COPY ./.bashrc ~/
COPY ./.vimrc ~/

# Update the package lists and install the specified packages
RUN apt-get update && apt-get install -y vim

"""

with open("Dockerfile", "w") as dockerfile:
    dockerfile.write(dockerfile_template)

image, build_logs = client.images.build(
    path='.',
    dockerfile='Dockerfile',
    rm=True,
    tag=args.image_name 
)

for log_line in build_logs:
    print(log_line)

print(f"Image '{image.tags[0]}' created successfully.")
print("Deleting Dockerfile....")
os.system("del Dockerfile")