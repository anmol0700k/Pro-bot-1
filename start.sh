if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anmol0700k/EvaMaria-1.git /EvaMaria-1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria-1
fi
cd /EvaMaria-1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
