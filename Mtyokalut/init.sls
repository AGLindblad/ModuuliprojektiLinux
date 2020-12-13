ohjelmat:
  pkg.installed:
    - pkgs:
      - atool
      - curl
      - httpie
      - tree
      - lynx
      - git

sysstat:
  pkg.installed

/etc/default/sysstat:
  file.managed:
    - source: salt://Mtyokalut/sysstat

/etc/sysstat/sysstat:
  file.managed:
    - source: salt://Mtyokalut/sysstat2

sysstatservice:
  service.running:
    - name: sysstat
    - watch:
      - file: /etc/default/sysstat

htop:
  pkg.installed

/etc/htoprc:
  file.managed:
    - source: salt://Mtyokalut/htoprc

rsync:
  pkg.installed

/etc/rsyncd.conf:
  file.managed:
    - source: salt://Mtyokalut/rsyncd.conf
