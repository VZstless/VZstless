if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -xg CHROOT "$HOME/chroot"

set -xg GTK_IM_MODULE fcitx
set -xg QT_IM_MODULE fcitx5
set -xg XMODIFIERS @im=fcitx

set -xg EDITOR "vim"
set -xg NIXPKGS_HOME "$HOME/nixpkgs"

alias latest="ls -laht"
alias dquilt="quilt --quiltrc=$HOME/.quiltrc-dpkg"
alias gdb="gdb -q"
alias gitdiff="git difftool --no-symlinks --dir-diff"
alias valgrind="valgrind --leak-check=full"
alias kdiff="kitten diff"
alias docker="podman"
alias docker-compose="podman-compose"
alias vim="nvim"
alias aur-ssh="ssh -i ~/.ssh/aur aur@aur.archlinux.org"
alias mkchrootpkg="arch-nspawn $CHROOT/root pacman -Syu && makechrootpkg -c -r $CHROOT"

