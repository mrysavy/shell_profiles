function run_dkrm-set() {
  eval "$(docker-machine env $1)"
}
alias dkrm-set=run_dkrm-set;

function run_dkrm-run() {
  docker $(docker-machine config $1) $2
}
alias dkrm-run=run_dkrm-run;

alias dkrm='docker $(docker-machine config $(docker-machine active))'

