from debian:buster-slim

run apt update -y && apt install curl -y
run curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
run install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


CMD ["bash"]
