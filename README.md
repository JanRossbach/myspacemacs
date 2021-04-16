# Jans spacemacs config

## About

This is my personal literal spacemacs config.

## Install
To install it, you first have to install spacemacs. If you already have a running installation of emacs, back your config up first.
Then make a fresh spacemacs install with

```sh
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

And then clone this repo into ~/.spacemacs.d/

```sh
git clone https://github.com/JanRossbach/myspacemacs ~/.spacemacs.d
```

To generate the necessary user-config.el file that is read by init.el, you have to go into user-config.org
and run the tangle command which is bound to C-c C-v t.
You can now personalize the config by editing the user-config.org file and run tangle again.
