tmux start-server
tmux new-session -d -s rr -n ssh
tmux new-window -t rr:1 -n roscore
tmux new-window -t rr:2 -n dashboard
tmux new-window -t rr:3 -n im_backend
tmux new-window -t rr:4 -n im_frontend

tmux send-keys -t rr:0 "ssh c1" C-m
tmux send-keys -t rr:1 "roscore" C-m
sleep 1
tmux send-keys -t rr:2 "realrobot && rosrun rqt_pr2_dashboard rqt_pr2_dashboard" C-m
tmux send-keys -t rr:3 "realrobot && roslaunch pr2_interactive_manipulation_frontend pr2_interactive_manipulation_desktop.launch" C-m
