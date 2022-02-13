<p align="center">
<a href="https://github.com/drmikecrowe/bash-it">drmikecrowe's bash-it</a> plugin for <a href="https://github.com/xxh/xxh-shell-bash">xxh-shell-bash</a>.
</p>

<p align="center">
If you like the idea click ⭐ on the repo and stay tuned.
</p>

## Caution

This uses conventions I personally adopted:

1. My settings are exported using [this script](https://github.com/drmikecrowe/bash-it/blob/master/backup-settings.sh) to persist my defaults. To enable, I run this [output bash file](https://github.com/drmikecrowe/bash-it/blob/master/bash_it_config_default.sh).
2. I store my startup script (with my config) [here])(https://github.com/drmikecrowe/bash-it/blob/master/personal-startup.sh)

This config allows me to simply add this at the bottom of `.bashrc`:

```sh
source .bash_it/personal-startup.sh
```

and I'm done

## Install
From xxh repo:
```
xxh +I https://github.com/drmikecrowe/xxh-plugin-bash-bashit
xxh yourhost +s bash +if
```

Connect:
``````
xxh yourhost +s bash +if
```
