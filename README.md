# twitcher

Scripts to view and open Twitch.tv livestreams from the command line

## Getting Started

### Prerequisities

* python 3
* a valid Twitch.tv OAUTH token
* [Livestreamer](http://docs.livestreamer.io) command line utility
* [FZF](https://github.com/junegunn/fzf) (optional, for zsh plugin)

### Installing

1. Clone the repository:
    git clone https://github.com/rahulsalvi/twitcher.git "${TWITCHER_DIR:-$HOME}/.twitcher"

2. Create an environment variable ```TWITCH_TOKEN``` with a Twitch.tv OAUTH token:
    export TWITCH_TOKEN=<your token>
Note: A token can be generated by registering your own Twitch.tv application or with [this tool](http://www.twitchapps.com/tmi/)

3. Add the following line to your .zshrc:
    [ -f "${TWITCHER_DIR:-$HOME}/.twitcher/twitcher.zsh" ] && source "${TWITCHER_DIR:-$HOME}/.twitcher/twitcher.zsh"
This creates a keybind Alt-t that will open an FZF window with your followed streams. Selecting a stream (or many) will open them using the Livestreamer utility

## Configuration

There are several environment variables that control how twitcher behaves

```TWITCHER_DIR``` - Set this to the location to where you cloned the project

```TWITCH_TOKEN``` - The OAUTH token to use. Since this is linked to a Twitch.tv account, multiple can be used if desired

```FZF_TWITCHER_OPTS``` - The options passed to FZF when opening twitcher

## Authors

* **Rahul Salvi** - [rahulsalvi](https://github.com/rahulsalvi)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Acknowledgments

* [Livestreamer](http://docs.livestreamer.io)
* [FZF](https://github.com/junegunn/fzf)
