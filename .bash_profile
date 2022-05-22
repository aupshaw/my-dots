PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
source ~/.bashrc

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/aupshaw3/.sdkman"
[[ -s "/Users/aupshaw3/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/aupshaw3/.sdkman/bin/sdkman-init.sh"
