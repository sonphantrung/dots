git clone --bare --recursive git@gitlab.org:phantrungson17/dots
git clone git@gitlab.org:phantrungson17/st-phantrungson
git clone git@gitlab.org:phantrungson17/dmenu-phantrungson
git clone git@gitlab.org:phantrungson17/Slstatus
git clone git@gitlab.org:phantrungson17/dwm-phantrungson
function config {
   /usr/bin/git --git-dir=$HOME/dots/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
