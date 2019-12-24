# name: terraform_ws_indicator

function terraform_ws_indicator
  set -g terraform_workspace_file ./.terraform/environment
  if test -f $terraform_workspace_file
    echo -n 'terraform WS:('
    tr -d "\n" < $terraform_workspace_file
    echo -n ')'
  end
end

