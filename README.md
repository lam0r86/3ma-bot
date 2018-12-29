# Threema-Chat-Bot

#### This is an Fork of [Sec42/3ma-bot](https://github.com/Sec42/3ma-bot)

It is written in go. If this is your first time working with go, you need to setup ~~~Shell $GOPATH ~~~ similar to this:
~~~Shell
export GOPATH=~/.go
mkdir $GOPATH
go get github.com/o3ma/o3rest
go get github.com/o3ma/o3
~~~

### Universal Tool For Everything -- a small bot

This bot is written mostly in perl.  Most of the features require some
external data to be downloaded and parsed into the correct format.
Check the `URLs` file in each subdirectory for pointers to data
sources.

### Usage
Build and run with go run simple-bot.go.

It will create an threema ID file on first run which will be saved to threema.id. I suggest add this to your backup and do not publish it.

The addressbook of the people that communicate with your bot will be saved to address.book if you kill the bot.

All incoming text messages will be passed on to a binary utfe.bot, and the output will be sent back to the originator.

This utfe.bot binary/script is not part of this repo and can be written in any language. Use your own imagination, or refer to [utfe](https://github.com/Sec42/utfe)

### Licence

All code in this repo is herby licenced under the 2-clause BSD licence. 

### Legacy


### Thanks

Thanks [Sec42](https://github.com/Sec42)
