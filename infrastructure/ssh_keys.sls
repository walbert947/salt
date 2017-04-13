{% for user in pillar.get('users_ssh_keys', []) %}
Ensure SSH home directory exists for {{ user['name'] }}:
  file.directory:
    - name: /home/{{ user['name'] }}/.ssh
    - user: {{ user['name'] }}
    - group: users
    - dir_mode: '0700'
    - file_mode: '0600'
    - makedirs: true

Adding SSH key for {{ user['name'] }}:
  ssh_auth.present:
    - user: {{ user['name'] }}
    - names: {{ user['keys']|yaml }}
    - require:
      - file: Ensure SSH home directory exists for {{ user['name'] }}
{% endfor %}
