
# deploy2

'New patch version':
  pkg.installed:
    - pkgs:
      - vim: 2:7.4.052-1ubuntu3.1
      - vim-common: 2:7.4.052-1ubuntu3.1
      - vim-runtime: 2:7.4.052-1ubuntu3.1


'Send event to bus':
  event.send:
    - name: 'mayo/status/{{ grains['id'] }}/deploy2'
    - data:
        packages: 'vim, vim-common, vim-runtime'
        job: 'Deploy 2'
    - onchanges:
      - pkg: 'New patch version'