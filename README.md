# rust-armv5

A simple demo app on how to build binaries for "armv5te" architecture using Rust.


## Building
Add the required target using `rustup`:
```sh
rustup target add armv5te-unknown-linux-musleabi

```

Install the linker. On MacOS:

```sh
brew install arm-linux-gnueabihf-binutils
```

