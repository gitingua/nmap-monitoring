mkdir_nmap:
  cmd.run:
    - cwd: /usr/local/share/
    - name: mkdir nmap-mon

base_nmap:
  cmd.run:
    - cwd: /usr/local/share/nmap-mon/
    - name: nmap -oX base.xml -sV -PN ip add

/usr/share/nmap/scan-one.sh:
  file:
    - managed
    - template: jinja
    - name: /usr/local/share/nmap-mon/scan-one.sh
    - source: salt://nmap-monitoring/nmap-monitoring/scan-one.jinja
    - user: root
    - group: root
    - mode: 755

/usr/local/share/nmap-mon/scan-one.sh:
  cron.present:
    - user: root
    - minute: '0'
    - daymonth: '1-31/2'

/usr/share/nmap/scan-two.sh:
  file:
    - managed
    - template: jinja
    - name: /usr/local/share/nmap-mon/scan-two.sh
    - source: salt://nmap-monitoring/nmap-monitoring/scan-two.jinja
    - user: root
    - group: root
    - mode: 755

/usr/local/share/nmap-mon/scan-two.sh:
  cron.present:
    - user: root
    - minute: '0'
    - daymonth: '2-31/2'
