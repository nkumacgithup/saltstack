
install_apache:
  pkg.installed:
    - pkg:
      - httpd

index>hmtl:
  - name: /var/www/html/index.html
  - user: apache
  - group: apache
  - mode: 644
  - source: state://apache/template/index.html

apache-service:
  service.running:
    - name: apache
    - enable: True
