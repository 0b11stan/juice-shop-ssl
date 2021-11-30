# Juice shop ssl cobaye

## Usage

On the remote host
```bash
git clone https://github.com/0b11stanjuice-shop-ssl.git ~/juice-shop-ssl
make DOMAIN=cobaye.net up
```

On the local machine
```bash
scp user@remote:/home/user/juice-shop-ssl/proxy/ssl/cert.pem /tmp/cert.pem
```

Then, add `/tmp/cert.pem` to your browser's certificate database.

After your tests, you should remove the certificate from your browser but even
if you dont, it will only last for 30 days.
