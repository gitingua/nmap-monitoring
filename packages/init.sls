nmap:
  pkg.installed:
    - sources:
      - nmap: https://nmap.org/dist/nmap-7.80-1.x86_64.rpm
zenmap:
  pkg.installed:
    - sources:
      - zenmap: https://nmap.org/dist/zenmap-7.80-1.noarch.rpm
ncat:
  pkg.installed:
    - sources:
      - ncat: https://nmap.org/dist/ncat-7.80-1.x86_64.rpm

nping:
  pkg.installed:
    - sources:
      - nping: https://nmap.org/dist/nping-0.7.80-1.x86_64.rpm

cheese:
  pkg.installed:
    - sources:
      - cheese-release: http://www.nosuchhost.net/~cheese/fedora/packages/epel-7/x86_64/cheese-release-7-1.noarch.rpm

lua:
  pkg.installed:
    - pkgs:
      - lua
