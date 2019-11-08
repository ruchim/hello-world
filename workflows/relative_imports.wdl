version 1.0

task getLength {
  command {
    echo whatevs
  }
  output {
    Array[String] someStrings = ["foo", "bar", "baz"]
    Array[Int] someInts = [1, 2, 3]
  }
  runtime { docker: "ubuntu:latest" }
}

workflow relative_imports {
  Array[String] empty = []

  call getLength

  output {
    Int someStringsLength = length(getLength.someStrings)
    Int someIntsLength = length(getLength.someInts)
    Int emptyLength = length(empty)
  }
}
