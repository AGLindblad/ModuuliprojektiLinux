gimp:
  pkg.installed

/etc/gimp/2.0/gimprc:
  file.managed:
    - source: salt://Mgrafiikka/gimprc

krita:
  pkg.installed

/etc/xdg/kritarc:
  file.managed:
    - source: salt://krita/kritarc

vlc:
  pkg.installed
