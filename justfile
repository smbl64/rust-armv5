binary := "target/armv5te-unknown-linux-musleabi/release/hello-armv5"
[private]
default:
  @just --list

# Build a release binary
build:
  #!/usr/bin/env bash
  set -eu 
  echo "Building..."
  cargo build -q --release
  size=$(du -b {{binary}} | cut -f1)
  echo "Finished. Binary is $size bytes."

# Upload the binary (using scp) to the specified server
upload server: build
  scp {{binary}} {{server}}:

