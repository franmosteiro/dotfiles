# Brew
alias brwe="brew"
alias bsl="brew services list"

# Others
alias c='pbcopy'

alias k='kill -9'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'

#aws cli aliases
function aws-role() {
  unset AWS_VAULT AWS_DEFAULT_REGION AWS_REGION AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN AWS_SECURITY_TOKEN AWS_SESSION_EXPIRATION AWS_PROFILE
  eval $(aws-vault exec $1 -- env | grep AWS_ | sed 's/^/export /g')
}
alias aws-dev='aws-role dev && kubectx dev-eks'
alias aws-pro='aws-role pro && kubectx prod-eks'
alias lens='open /Applications/Lens.app'