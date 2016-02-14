## Compose key on OS X

Adapted from [gnarf/osx-compose-key](https://github.com/gnarf/osx-compose-key).

### What is a compose key?

A "compose" key is an input method used for complex characters.  It allows you to press your compose key (I bind mine to right-alt on my mac keyboard), and then type something, for instance:

* `[Compose]`, `/`, `o` = `ø`
* `[Compose]`, `a`, `e` = `æ`
* `[Compose]`, `"`, `o` = `ö`

This repo provides the compose key sequences for nordic and german charachters not found on a standard english keyboard.

### Setting up a "Compose Key" in Mac OS X

Install [Karabiner](https://pqrs.org/osx/karabiner/) for remapping keys support, and download these files into the correct places:

```bash
brew cask install karabiner
mkdir -p ~/Library/Application\ Support/Karabiner
curl 'https://raw.githubusercontent.com/viis/osx-compose-key/master/private.xml' -o ~/Library/Application\ Support/Karabiner/private.xml
mkdir -p ~/Library/KeyBindings
curl 'https://raw.githubusercontent.com/viis/osx-compose-key/master/DefaultKeyBinding.dict' -o ~/Library/KeyBindings/DefaultKeyBinding.dict
```

In Karabiner, enable "Send § for Right Command":

![screenshot](https://i.imgur.com/zSJmECg.png)

Your right command key is now a compose key.

Note: changes to `~/Library/KeyBindings/DefaultKeyBinding.dict` require quitting and restarting any apps you want to test them in.
