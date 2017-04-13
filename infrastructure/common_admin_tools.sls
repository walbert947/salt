Install common admin tools:
  pkg.installed:
    - pkgs:
      - atop
      - bash-completion
      - dkms
      - dmidecode
      - emacs-nox
      - finger
      - fping
      - fuse
      - git
      - htop
      - iftop
      - iotop
      - lshw
      - lsof
      - lsscsi
      - lynx
      - mc
      - mlocate
      - mtr
      - mutt
      - nano
      - nethogs
      - ngrep
      - nmap
      - pamtester
      - screen
      - sharutils
      - strace
      - subversion
      - sysstat
      - tcpdump
      - telnet
      - tmux
      - tree
      - unzip
      - wget
      - zsh

{%- if grains['os_family'] == 'Debian' %}
      - apt-file
      - bind9-host
      - dnsutils
      - lsb-core
      - mailutils
      - netcat-openbsd
      - tcptraceroute
      - traceroute
      - vim

{%- elif grains['os_family'] == 'RedHat' %}
      - bind-utils
      - redhat-lsb-core
      - mailx
      - vim-enhanced
      - yum-utils
      - yum-plugin-versionlock
{%- if grains['osmajorrelease']|int <= 6 %}
      - nc
      - tcptraceroute
      - traceroute
{%- else %}
      - nmap-netcat
      - traceroute
{%- endif %}

{%- endif %}
