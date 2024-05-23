if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git https://github.com/leeyoomuzic/deluxmovienew/tree/MJ
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /deluxmovienew 
fi
cd /deluxmovienew 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
