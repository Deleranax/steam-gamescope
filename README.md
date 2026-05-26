# steam-gamescope
Simple setup inpired by [gamescope-session-steam](https://github.com/OpenGamingCollective/gamescope-session-steam) to run the _Steam_ client inside a nested instance of _Gamescope_. It's useful when you want to have a _Steam Deck_/_Steam Machine_-like experience, on a desktop with multiple screen. It also helps to mitigate some performance issues that you can encounter with the plain _Steam Big Picture_.

## How does it work?
_Gamescope_ provides a isolated _Wayland_ compositor tailored for games. It is used as an embedded session compositor on _Steam Deck_ and _Steam Machine_ (meaning that it replaces the traditionnal desktop session compositors, such as _Mutter_ for _GNOME_ or _Kwin_ for _KDE_), but can also be used as a nested compositor (meaning that it can be used on top of an already running compositor).

## Install

You need `gamescope`, `steam`, and `polkit`.

### ArchLinux/AUR

Use your favorite AUR-helper:

```sh
yay -S steam-gamescope
```

```sh
paru -S steam-gamescope
```

### Other Linux distribution

Clone the repository and run the installation file:
```sh
git clone https://github.com/Deleranax/steam-gamescope.git
sudo ./install.sh
```
