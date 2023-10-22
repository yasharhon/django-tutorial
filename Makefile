make-image:
	sudo docker build --target server -t server-image .

start-server:
	sudo docker run -p 8000:8000 --rm -t server-image:latest python mysite/manage.py runserver 0.0.0.0:8000
