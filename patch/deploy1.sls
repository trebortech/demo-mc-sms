# deploy1

'New patch version':
  pkg.installed:
    - pkgs:
      - vim-common: 2:7.4.052-1ubuntu3
      - vim-runtime: 2:7.4.052-1ubuntu3
      - vim: 2:7.4.052-1ubuntu3

'Update All':
  pkg.uptodate:
    - name: "Update My Packages"

'Send event to bus':
  event.send:
    - name: 'mayo/status/{{ grains['id'] }}/deploy1'
    - data:
        packages: 'vim, vim-common, vim-runtime'
        job: 'Deploy 1'
    - onchanges:
      - pkg: 'New patch version'