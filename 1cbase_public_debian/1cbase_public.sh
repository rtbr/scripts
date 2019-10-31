#################how to use#####################
# /root/scripts/1cbase_public.sh "BASE_NAME"
################################################
################## keys ########################
#
#   -publish: опубликовать, ключ по умолчанию
#   -delete: удалить публикацию
#websrv
#   -apache2: публикация Веб-клиента для Apache 2.0
#   -apache24: публикация Веб-клиента для Apache 2.4
#   -wsdir VirtualDir: виртуальный каталог
#   -dir Dir: физический каталог, в который будет отображен виртуальный
#   -descriptor vrdPath: путь к существующему vrd файлу
#   -connstr connStr: строка соединения ИБ
#   -confPath confPath: полный путь к конфигурационному файлу
#
########################################################################
mkdir /var/www/$1
touch /etc/apache2/sites-available/$1.conf
sudo -u root /opt/1C/v8.3/x86_64/webinst -publish -apache24 -wsdir $1 -dir /var/www/$1 -connstr  'Srvr="1c-01-win";Ref="$1";' -confpath /etc/apache2/sites-available/$1.conf
sudo -u root a2ensite $1
sudo -u root systemctl reload apache2
