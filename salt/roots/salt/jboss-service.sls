jboss-service:
  file.managed:
    - name: /etc/init.d/jboss-as
    - source: salt://files/jboss-as
    - user: root
    - group: root
    - mode: 744
  cmd.wait:
    - name: update-rc.d jboss-as defaults
    - watch:
      - file: jboss-service
  service.running:
    - name: jboss-as
    - reload: True
