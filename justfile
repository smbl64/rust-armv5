[private]
default:
  @just --list

build:
  cargo build --release
  ls -lh target/armv5te-unknown-linux-musleabi/release/hello-armv5
