server {
        listen 80 default_server;
        listen [::]:80 default_server ipv6only=on;
	      server_name example.com;
	      
	      return 301 https://$server_name$request_uri;
}

server {
	listen	443 ssl;
	listen [::]:443 default_server ipv6only=on;

	root /usr/share/nginx/html/example.com;
  index index.php index.html index.htm;


	server_name	ytsweb.net;
	ssl_certificate /etc/nginx/ssl/nginx.crt;
  ssl_certificate_key /etc/nginx/ssl/nginx.key;

	ssl_protocols               TLSv1 TLSv1.1 TLSv1.2;
	ssl_ciphers                 EECDH+CHACHA20:EECDH+AES128:RSA+AES128:EECDH+AES256:RSA+AES256:EECDH+3DES:RSA+3DES:!MD5;
	ssl_prefer_server_ciphers   on;

}
