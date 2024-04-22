binary := "target/armv5te-unknown-linux-musleabi/release/hello-armv5"
[private]
default:
  @just --list

# Build a release binary
build:
  cargo build --release
  ls -lh {{binary}}

# Upload the binary (using scp) to the specified server
upload server: build
  scp {{binary}} {{server}}:

