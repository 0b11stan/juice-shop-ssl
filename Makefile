DOMAIN=localhost

proxy/ssl:
	mkdir $@
	openssl req -x509 -keyout $@/key.pem -out $@/cert.pem -nodes \
		-subj '/CN=$(DOMAIN)'

clean:
	-rm -r proxy/ssl

up: proxy/ssl
	docker-compose up --build -d

down:
	docker-compose down --volumes
