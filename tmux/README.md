# tmux 

## Fixing the italics in vim in tmux thing

Run:
```
   cat <<EOF|tic -x -
   tmux|tmux terminal multiplexer,
     ritm=\E[23m, rmso=\E[27m, sitm=\E[3m, smso=\E[7m, Ms@,
       use=xterm+tmux, use=screen,

       tmux-256color|tmux with 256 colors,
         use=xterm+256setaf, use=tmux,
    EOF
```

Then add to `.tmux.conf`:

```
   set -g default-terminal "tmux"
```

