function run_dkrm-unset() {
  unset DOCKER_TLS_VERIFY DOCKER_HOST DOCKER_CERT_PATH DOCKER_MACHINE_NAME
  unalias docker
  unalias docker-compose
}

function run_dkrm-set() {
  eval "$(docker-machine env $1)"
  alias docker='docker $(docker-machine config $(docker-machine active))'
  alias docker-compose='docker-compose $(docker-machine config $(docker-machine active))'
}

function run_dkrm-run() {
  docker $(docker-machine config $1) $2
}

alias dkrm-unset=run_dkrm-unset;
alias dkrm-set=run_dkrm-set;
alias dkrm-run=run_dkrm-run;
