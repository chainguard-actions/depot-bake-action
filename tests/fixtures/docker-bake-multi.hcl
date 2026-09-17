group "default" {
  targets = ["app", "helper"]
}

target "app" {
  dockerfile-inline = "FROM busybox:latest\nRUN echo app > /app.txt\nLABEL test=true"
  output = ["type=tar,dest=/tmp/depot-bake-app.tar"]
  platforms = ["linux/amd64"]
}

target "helper" {
  dockerfile-inline = "FROM busybox:latest\nRUN echo helper > /helper.txt\nLABEL test=true"
  output = ["type=tar,dest=/tmp/depot-bake-helper.tar"]
  platforms = ["linux/amd64"]
}
