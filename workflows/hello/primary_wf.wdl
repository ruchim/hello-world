version 1.0

import "https://raw.githubusercontent.com/ruchim/hello-world/master/workflows/hello/echo_hello" as echo

workflow primary_wf {
  call echo.relative_imports {}
  
  output {
    Int relative_result = echo.relative_imports.result
    Int relative_result2 = echo.relative_imports.result2
  }
}
