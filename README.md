# Install TizenBrew on your Samsung TV

This project makes it easy to install TizenBrew on your
Samsung TV. Samsung TV's since 2015 run an operating system called Tizen.

In this repo I've made it easier to install this on your TV, without needing to
spend too long setting up a full development environment.

For documentation about the TizenBrew app, see [here](https://github.com/reisxd/TizenBrew)).

## Usage

1. [Ensure your Samsung TV is in developer mode](https://developer.samsung.com/smarttv/develop/getting-started/using-sdk/tv-device.html#Connecting-the-TV-and-SDK)
	- If you're having trouble, make sure you're using the "123" button on the remote when typing in "12345".
	
2. Run this command replacing the final argument with the IP of your Samsung TV

```bash
docker run --rm hcbille/install-tizenbrew-tizen <samsung tv ip>
```


## Credits

This is possible thanks to these projects, this repo is just a quick pulling together
of all their hard work into some simply steps:

- [install-jellyfin-tizen](https://github.com/Georift/install-jellyfin-tizen)
