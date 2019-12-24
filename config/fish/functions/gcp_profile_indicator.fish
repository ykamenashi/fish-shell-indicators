# name: gcp_profile_marker

set -g gcloud_profile_path "$HOME/.config/gcloud/active_config"

function gcp_profile_indicator -d '"gcloud config configuraions" indicator'
  if test -f $gcloud_profile_path
    echo -n 'GCP Profile:('
    tr -d "\n" < $gcloud_profile_path
    echo -n ')'
  end
end

