# IRCCloud Desktop

This is a prototype of an IRCCloud desktop app for Windows, Linux
(Debian/Ubuntu), and macOS. The app wraps the IRCCloud website
in a native window.

This app is currently experimental and is not officially supported,
however it should provide equivalent or better functionality to other
IRCCloud desktop wrapper apps.

If you have any issues, please file them in the [GitHub Issue
Tracker](https://github.com/irccloud/irccloud-desktop/issues).

## Downloading

IRCCloud Desktop can be [downloaded here](http://desktop.irccloud.com).
The appropriate version should be detected based on your OS.

## Development
[![Build
Status](https://travis-ci.org/irccloud/irccloud-desktop.svg?branch=master)](https://travis-ci.org/irccloud/irccloud-desktop)
[![Build status](https://ci.appveyor.com/api/projects/status/gx0f02q8w4hqwdt0?svg=true)](https://ci.appveyor.com/project/russss/irccloud-desktop)

IRCCloud Desktop is built on the Electron app framework, as used by
GitHub's Atom editor. For more information, check out the [Electron
documentation](http://electron.atom.io/docs/v0.37.8/).

### Build Requirements
* Node JS version 5.3 or higher

### Running

Run `npm install` in the root of the repository. `make dev` will run the
app quickly (without icons).

To build a full version, `make dist`.

### Official builds

The official builds of this app are generated on [Travis](https://travis-ci.org/irccloud/irccloud-desktop) (macOS, Linux) and
[AppVeyor](https://ci.appveyor.com/project/russss/irccloud-desktop) (Windows)

#### macOS code signing

macOS builds are code signed, and require some environment variables to be set.

In this repository, these variables are encrypted by the [`travis`](https://github.com/travis-ci/travis.rb#readme)
command line tool, available as a gem.

Install: `gem install travis`

After installing the gem you need to authenticate to Travis with your GitHub
credentials using `travis login`. You can either enter your password or (e.g. if using 2FA)
use an [access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/).

GitHub credentials are only needed the first time you run login, at which point you'll get
a Travis access token in `~/.travis/config.yml` and you can revoke your GitHub access token after that. More details in the
[docs](https://github.com/travis-ci/travis.rb#login).

Once you've authenticated with Travis, copy <code>.travis.env<b>.example</b></code> to `.travis.env` and fill
in the appropriate variables. Then run `make encryptenv` to create the encrypted file
<code>.travis.env<b>.enc</b></code>. Make sure you don't commit the unencrypted .travis.env
(it's in `.gitignore`)

## Feedback

If you have any questions, get in touch on [#feedback at
irc.irccloud.com](https://www.irccloud.com/#!/ircs://irc.irccloud.com:6697/%23feedback).


