make-image:
	sudo docker build --target server -t server-image .

start-server:
	sudo docker run --volume ./mysite:/project -p 8000:8000 --rm -t server-image:latest python3 manage.py runserver 0.0.0.0:8000
