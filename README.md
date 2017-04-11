# terminalart

scon.sh 
-------
little and very simple ssh connection script, that helps me keep track of remote IPs and different port settings when connecting to a remote pc, nas, raspberry pi and so on.
this is more an example of how I use the scripts below for ascii animations.
- IPs, hostnames and options need to be set first
- options are currently restricted to single letter (much simpler for starter)

**usage**
./scon.sh -<option>

**current options (have to be edited)**
- d   stube
- l   lappie
- s   server
- n   nas with default port 22 and username nas
- v,w,t,x with further hosts and individual settings

the files are used for creating animated ascii art.
----------------------------------------------------

intro.sh
--------
little dude takes the spaceship from your pc to the remote location and exits after landing..^^

![intro.sh](https://s16.postimg.org/77w0fbd6t/landed.png)

planet.sh
---------
imagined remote location looking like a planet, can also be a cow, when using cowsay "landed" instead.

![planet.sh](https://s11.postimg.org/cbs1wzppv/planet.png)

- run with lolcat for a colorful experience ;-)

![planet lolcat](https://s4.postimg.org/iyoypsam5/planetlolcat.png)

todo
- individual welcome message per remote location (kodi, nas, raspi, server) 
