terraform {
  backend "consul" {
    address = "127.0.0.1:8500"
    scheme  = "http"
    access_token = "803c4cc5-641b-3b40-de3c-37b46272b6bd"
  }
}