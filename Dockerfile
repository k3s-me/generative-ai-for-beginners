# Start from the base image specified in devcontainer.json
FROM mcr.microsoft.com/devcontainers/universal:2
# Install Python packages as specified
RUN python3 -m pip install --no-cache-dir -r requirements.txt

# Run the post-create command
RUN bash .devcontainer/post-create.sh

# Your application might need a specific start command; use CMD to specify it
# CMD ["your", "start", "command"]
