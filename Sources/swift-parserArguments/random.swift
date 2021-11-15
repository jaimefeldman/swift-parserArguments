//
//  File.swift
//  
//
//  Created by Jaime Feldman on 09-11-21.
//

import ArgumentParser

extension command {
    struct random: ParsableCommand {
        static var configuration: CommandConfiguration {
            .init(
                commandName: "random",
                abstract: "Generador de opracines aleatorias",
                version: "1.0.0",
                subcommands: [range.self]
            )
        }
    
        //MARK: - Generador de números enteros aleatorios.
        struct range: ParsableCommand {
            static var configuration: CommandConfiguration {
                .init(
                    commandName: "range",
                    abstract: "Generador de número aleatorio en un rago de enteros.",
                    version: "1.0.0"
                )
            }
            
            @Argument(help: "Número entero base")
            var NumeroEnteroBase: Int?
            
            @Argument(help: "Número entero limite")
            var NumeroEnteroLimite: Int?
            
            func validate() throws {
                if self.NumeroEnteroBase == nil || self.NumeroEnteroLimite == nil {
                    throw ValidationError("Debe ingresar dos enteros separados por espacio.")
                    } else if self.NumeroEnteroBase! < 1 || self.NumeroEnteroLimite! < 1 {
                    throw ValidationError("Los valores deben ser mayor o igual a 1")
                }
            }
            
            func run() throws {
                print("Número aleatorio entre \(NumeroEnteroBase!) y \(NumeroEnteroLimite!) = \(Int.random(in: NumeroEnteroBase!...NumeroEnteroLimite!))")
            }
        }
    }
}


