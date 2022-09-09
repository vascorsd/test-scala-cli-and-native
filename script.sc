#!/usr/bin/env -S scala-cli shebang

// since this scala-cli version doesn't know about latest versions
// since they were not available when this was released
// it means we can't just say scala 3 to get the latest,
// so for scala and native versions we have to be fully explicit for latest versions.

//> using scala "3.2.0"
//> using platform "scala-native"
//> using nativeVersion "0.4.7"

println("scripted native")
println("---")
