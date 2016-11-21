export SSH_AUTH_SOCK=/tmp/.ssh-socket
pid=`cat /tmp/.ssh-agent-pid`
kill -9 $pid
rm /tmp/.ssh-socket
ssh-agent -a $SSH_AUTH_SOCK >/tmp/.ssh-script
. /tmp/.ssh-script
echo $SSH_AGENT_PID >/tmp/.ssh-agent-pid
ssh-add
