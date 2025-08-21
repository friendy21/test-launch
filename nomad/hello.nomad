job "hello" {
  datacenters = ["dc1"]
  type        = "batch"

  group "hello-group" {
    count = 1

    task "hello-task" {
      driver = "docker"

      config {
        image = "sami1111/hello_image:latest"
        force_pull = true
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
