
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/srothe/.sdkman"
[[ -s "/Users/srothe/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/srothe/.sdkman/bin/sdkman-init.sh"
