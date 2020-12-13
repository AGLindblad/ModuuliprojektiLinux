ohjelmat:
 pkg.installed:
    - pkgs:
      - qalculate
      - shutter

/etc/apt/trusted.gpg.d/microsoft.gpg:
  file.managed:
    - source: salt://vscode/microsoft.gpg

/etc/apt/sources.list.d/microsoft.list:
  file.managed:
    - source: salt://vscode/microsoft.list

code:
  pkg.installed:
    - refresh: True

chromium-browser:
  pkg.installed

/etc/chromium-browser/default:
  file.managed:
    - source: salt://Mdesktop/default
