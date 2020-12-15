openssh-server:
  pkg.installed

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://Mlamps/sshd_config

sshd:
  service.running:
    - watch:
      - file: /etc/ssh/sshd_config

apache2:
  pkg.installed

/var/www/html/index.html:
  file.managed:
    - source: salt://Mlamps/index.html

/etc/apache2/mods-enabled/userdir.conf:
  file.symlink:
    - target: ../mods.available/userdir.conf

/etc/apache2/mods-enabled/userdir.load:
  file.symlink:
    - target:  ../mods-available/userdir.load

apache2running:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-enabled/userdir.conf
      - file: /etc/apache2/mods-enabled/userdir.load
      - file: /etc/apache2/mods-enabled/php7.2.conf

mariadb-server:
  pkg.installed

php:
  pkg.installed

libapache2-mod-php:
  pkg.installed

/etc/apache2/mods-available/php7.2.conf:
  file.managed:
    - source: salt://Mlamps/php7.2.conf
