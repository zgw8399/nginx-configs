server {
        listen 80;
        server_name search.varden.com;  # 不同的虚拟主机域名必须不一样
        location / {
                root /var/www/html-search;  # 不同的虚拟主机目录必须不一样
                index index.html index.htm;
        }
}
