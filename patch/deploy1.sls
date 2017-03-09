# deploy1

#'Update All':
#  pkg.uptodate:
#    - name: "Update My Packages"

'Install COWSAY':
  pkg.installed:
    - name: cowsay


'Send event to bus':
  event.send:
    - name: 'mayo/status/{{ grains['id'] }}/deploy1'
    - data:
        packages: 'vim, vim-common, vim-runtime'
        job: 'Deploy 1'
    - onchanges:
      - pkg: 'Install COWSAY'
