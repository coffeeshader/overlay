# coffeeshader's Gentoo Overlay

## Usage

/etc/portage/repos.conf/coffeeshader.conf

	[coffeeshader]
	location = /var/db/repos/coffeeshader
	sync-type = git
	sync-uri = https://codeberg.org/coffeeshader/overlay

## Emacs packages (app-emacs)
This overlay includes various Emacs packages that I personally use on my setup and their dependencies. Both a stable version and a live (git) version of **most** packages is available.

I highly recommend you install your Emacs packages through [GNU Elpa](https://elpa.gnu.org) or [MELPA](https://melpa.org). **Especially** avoid having packages installed through Portage and packages installed through Emacs on the same configuration.
