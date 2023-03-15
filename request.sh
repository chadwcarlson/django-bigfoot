# curl -sI https://firstfix-lk372ja-wqxtdi6snukl6.eu-4.platformsh.site/

for i in $(seq 1 100);
do
    echo $i
    response=$(curl -sI https://firstfix-lk372ja-wqxtdi6snukl6.eu-4.platformsh.site/)
done




# Working example

type: 'python:3.8'


runtime:
    extensions:
        - blackfire

        start: "blackfire-python gunicorn -w 4 -b unix:$SOCKET myapp.wsgi:application"


pipenv blackfire = "*"
