alias k=kubectl
alias tf=terraform

# if kubectl exists then set prefs
k_exists=$( which kubectl )
if [ -n "$k_exists" ]; then
  echo "setting kubectl prefs"
  source <(kubectl completion zsh)
  export KUBE_EDITOR="code -w"
fi

# if minikube exists then set it to use docker as image registry
mk_exists=$( which minikube )
if [ -n "$mk_exists" ]; then
  echo "setting minikube context to docker"
  eval $(minikube docker-env)
fi
