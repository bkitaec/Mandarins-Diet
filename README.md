# MandarinsDiet


##Pages
```
#frontend
  /
#backend
  /admin/panel
```
[Sails] basic MVC application


# Issues
if problem with instalaion waterlock-local-auth:
npm install git+https://github.com/gish/waterlock-local-auth.git
bcrypt:
install/files/bcrypt.zip

## Vesta NGinx
```
/home/admin/conf/web/nginx.conf
```
```
server {
    listen      185.143.173.210:80;
    server_name swoi.dev www.swoi.dev;
    error_log  /var/log/apache2/domains/swoi.dev.error.log error;

    location / {
    proxy_pass                          http://localhost:1309;
    proxy_http_version                  1.1;
    proxy_set_header  Connection        "";
    proxy_set_header  Host              $host;
    proxy_set_header  X-Forwarded-For   $proxy_add_x_forwarded_for;
    proxy_set_header  X-Real-IP         $remote_addr;
        location ~* ^.+\.(jpeg|jpg|png|gif|bmp|ico|svg|tif|tiff|css|js|htm|html|ttf|otf|webp|woff|txt|csv|rtf|doc|docx|xls|xlsx|ppt|pptx|odf|odp|ods|odt|pdf|psd|ai|eot|eps|ps|zip|tar|tgz|gz|rar|bz2|7z|aac|m4a|mp3|mp4|ogg|wav|wma|3gp|avi|flv|m4v|mkv|mov|mpeg|mpg|wmv|exe|iso|dmg|swf)$ {
            root           /home/admin/web/swoi.dev/public_html/.tpm/public;
            access_log     /var/log/apache2/domains/swoi.dev.log combined;
            access_log     /var/log/apache2/domains/swoi.dev.bytes bytes;
            expires        max;
            try_files      $uri @fallback;
        }
    }

    location /error/ {
        alias   /home/admin/web/swoi.dev/document_errors/;
    }

    location ~ /\.ht    {return 404;}
    location ~ /\.svn/  {return 404;}
    location ~ /\.git/  {return 404;}
    location ~ /\.hg/   {return 404;}
    location ~ /\.bzr/  {return 404;}

    include /home/admin/conf/web/nginx.swoi.dev.conf*;
}
```