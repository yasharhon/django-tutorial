start-server:
	sudo docker build --target server -t server-image .
	sudo docker run --volume ./mysite:/project -p 8000:8000 --rm -t server-image:latest python3 manage.py runserver 0.0.0.0:8000

make-test-server:
	sudo docker build --target server -t server-image .
	sudo docker run --volume ./test:/project -p 8000:8000 --rm -t server-image:latest django-admin startproject mysite

run-test-server:
	sudo docker build --target server -t server-image .
	sudo docker run --volume ./test:/project -p 8000:8000 --rm -t server-image:latest python3 mysite/manage.py runserver 0.0.0.0:8000
