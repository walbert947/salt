# Runs a Salt highstate every minute with a random delay. This is set
# artifically low for demonstration purposes.
salt-run-highstate:
  cron.present:
    - name: sleep "$((RANDOM \% 60))"; salt-call state.apply
    - identifier: SaltStack highstate
    - user: root
