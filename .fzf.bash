# Setup fzf
# ---------
if [[ ! "$PATH" == */home/zhuangqiubin/.fzf/bin* ]]; then
  export PATH="$PATH:/home/zhuangqiubin/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/zhuangqiubin/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/zhuangqiubin/.fzf/shell/key-bindings.bash"

