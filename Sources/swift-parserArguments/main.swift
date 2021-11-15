import Foundation
import ArgumentParser


//: NOTE: argument parser defecto
/*
for argument in CommandLine.arguments {
    print("arguments:", argument)
}
*/

enum commands {}


// La estructura principal.
struct command: ParsableCommand {
    static var configuration: CommandConfiguration {
        .init(
            commandName: "command",
            abstract: "programa para entender el uso del parseo de argumentos en la linea de comandos  con swift usando el paquete ArgumentParser.",
            version: "1.0.0",
            subcommands: [calc.self, random.self]
        )
    }
}

command.main()


