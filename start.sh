if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Thorappan-TG/MR-PANDA-BOT.git /MR-PANDA-BOT       
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MR-PANDA-BOT
fi
cd /MR-PANDA-BOT
pip3 install -U -r requirements.txt
echo """
---------------
| BOT IS REDY |
---------------
"""
python3 bot.py
