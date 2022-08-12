if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Psychokiller-5/Spotify-filter.git /Spotify-filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Spotify-filter
fi
cd /Spotify-filter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
