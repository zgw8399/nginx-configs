server {
        listen 80;
        server_name picture.varden.com;
        location / {
                root /var/www/html-picture;
                index index.html index.htm;
        }
}
