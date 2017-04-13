{% for user in pillar.get('users_ssh_keys', []) %}
Adding SSH key for {{ user['name'] }}:
  ssh_auth.present:
    - user: {{ user['name'] }}
    - names: {{ user['keys']|yaml }}
{% endfor %}
