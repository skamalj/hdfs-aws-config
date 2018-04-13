su - hduser
rm -rf .ssh
yes "" | ssh-keygen -t rsa -P ""
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys
exit 
 
su - yarn
rm -rf .ssh
yes "" | ssh-keygen -t rsa -P ""
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys 
exit 
