group "default" {
  targets = ["hello"]
}

target "hello" {
  dockerfile-inline = "FROM busybox:latest\nRUN echo hello > /hello.txt\nLABEL test=true"
  output = ["type=tar,dest=/tmp/depot-bake-test.tar"]
  platforms = ["linux/amd64"]
}
