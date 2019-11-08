version 1.0

import "https://raw.githubusercontent.com/ruchim/hello-world/master/workflows/hello/echo_hello" as echo_hello

workflow primary_wf {
  echo_hello.relative_imports as relative_sub_wf {}
  
  output {
    Int relative_result = relative_sub_wf.result
    Int relative_result2 = relative_sub_wf.result2
  }
}
