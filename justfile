default:
    echo 'Hello, world!'

hello-world:
    echo 'println("Hello")' | scala-cli -

repl-default:
    scala-cli repl

repl-s32:
    scala-cli repl --scala 3.2

repl-with-oslib:
    scala-cli repl --dep com.lihaoyi::os-lib:0.7.8

compile-project-files:
    scala-cli compile .

test-project-files:
    scala-cli test .

release-project-files:
    scala-cli package . -o countByExtension

run-hello-normal-scala:
    scala-cli app-hello/Hello.scala app-hello/Messages.scala

run-app-hello-by-folder:
    scala-cli app-hello

run-app-from-file-including-others-with-directives:
    scala-cli other-app/Main.scala

run-using-javascript:
    scala-cli other-app/Main.scala --js

run-using-native:
    scala-cli app-hello --native -S 2.13.6

run-native-explicit-scala-and-native-versions:
    scala-cli app-hello --native --native-version 0.4.3 --scala 3

run-using-script:
    #!/usr/bin/env -S scala-cli shebang
    println("from just file script")

