## campfire - Command Line Interface for Campfire

Usage
-----
	gem install campfire

### Config
Create a `~/.campfirerc` and add the following lines:
	account=<<ACCOUNT NAME>>
	room=<<ROOM NAME>>
	token=<<TOKEN>>

OR

Use environment variables:
	➜  account="foo" room="room" token="token" campfire "Woot"

### Post a message to a room
	➜  campfire "Woot"

### Post a meme image to Campfire
	➜  meme CHALLENGE_ACCEPTED "Campfire Message" "Hell yeah" | imgur2 | campfire

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
* Send me a pull request. Bonus points for topic branches.

## Authors

* Mark Turner <mark@amerine.net>
* Chris Kraybill <ckraybill@gmail.com>
* Luke Sheridan <luke@windmillium.com>

## Copyright

Copyright (c) 2011
