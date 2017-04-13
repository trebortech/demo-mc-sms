"Update all packages":
  pkg.uptodate:
    - refresh: True
    
"Restart Systsem":
  module.run:
    - name: system.reboot
    - timeout: 1
    - in_seconds: True
    - onchanges:
      - pkg: "Update all packages"