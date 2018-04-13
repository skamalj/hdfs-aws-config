su - hduser
rm $HOME/.ssh/id_rsa
rm $HOME/.ssh/known_hosts
yes "" | ssh-keygen -t rsa -P ""
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys
exit 
 
su - yarn
rm $HOME/.ssh/id_rsa
rm $HOME/.ssh/known_hosts
yes "" | ssh-keygen -t rsa -P ""
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys 
exit 
