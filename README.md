```
git clone
cd into the dir
then do the usual virtual environment

python -m venv venv
source venv/bin/activate
python -m pip install -r requirements.txt
docker-compose up
```
If you work on multiple fasthtml projects concurrently, this helps a bit.  Not much but a bit.  More advantages to come...I suppose.

Currently there's no clear advantage to do it like this, except if you are deploying with the help of a team member that uses containers, and you just want to be on the same page as them.

Any changes require a rebuild of the container (1 second task).
