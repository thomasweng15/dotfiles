
# Add `sudo -u pi bash /home/pi/tmux_start.sh &` to /etc/rc.local
tmux start-server
tmux new-session -d -s rr -n ssh
