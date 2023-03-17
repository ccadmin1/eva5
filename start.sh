if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ccadmin1/eva5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /eva5
fi
cd /eva5
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
