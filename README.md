# cloudflare-nginx-ssl-conf
A basic site configuration to make cloudflare's full https work


Create the ssl key and cert with the following - 

`mkdir /etc/nginx/ssl`

And then

`sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt`

Please note that you should use Cloudflare's own configuration for ssl.
I've used the following repo - 
https://github.com/cloudflare/sslconfig
