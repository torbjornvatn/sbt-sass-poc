name := "Scala Sass POC"

version := "1.0"

scalaVersion := "2.10.3"

TaskKey[Unit]("compile-sass") := { """ruby bundler_runner.rb""".! }