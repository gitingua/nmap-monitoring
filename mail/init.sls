mail_pkg:
  pkg.installed:
    - pkgs:
      - epel-release
      - mailx
      - sendmail
      - postfix	  

postfix:
  service.running:
    - enable: True
    - reload: True

