//
//  File.swift
//  
//
//  Created by Jaime Feldman on 08-11-21.
//

import ArgumentParser


//MARK:- Calc principal

extension command {
    struct calc: ParsableCommand {
        static var configuration: CommandConfiguration {
            .init(
                commandName: "calc",
                abstract: "Calculadora simplificada, permite realizar algunos cálculos.",
                version: "1.0.0",
                subcommands: [self.suma, resta.self, multiplica.self, divide.self]
            )
        }
        
        //MARK:- operacion de suma
        
        struct suma: ParsableCommand {
            static var configuration: CommandConfiguration {
                .init(
                    commandName: "suma",
                    abstract: "suma dos numero eneteros."
                )
            }
            @Argument(help: "primer número entero a sumar.")
            var numeroEnteroOpt1: Int?
            
            @Argument(help: "segundo número entero a sumar.")
            var numeroEnteroOpt2: Int?
           
            func validate() throws {
                if self.numeroEnteroOpt1 == nil || self.numeroEnteroOpt2 == nil {
                    throw ValidationError("Debe ingresar dos parametros de numeros enteros para ser sumados.")
                }else if self.numeroEnteroOpt1! < 1 || self.numeroEnteroOpt2! < 1 {
                    throw ValidationError("Los valores deben ser mayor o igual a 1")
                }
            }

            func run() throws {
                let valor1 = self.numeroEnteroOpt1!
                let valor2 = self.numeroEnteroOpt2!
                print("\(valor1)+\(valor2)=\(valor1+valor2)")
            }
            
        }
        //MARK:- operacion de resta
        
        struct resta: ParsableCommand {
            static var configuration: CommandConfiguration {
                .init(
                    commandName: "resta",
                    abstract: "resta dos numero eneteros."
                )
            }
            @Argument(help: "primer número entero a sumar.")
            var numeroEnteroOpt1: Int?
            
            @Argument(help: "segundo número entero a sumar.")
            var numeroEnteroOpt2: Int?
           
            func validate() throws {
                if self.numeroEnteroOpt1 == nil || self.numeroEnteroOpt2 == nil {
                    throw ValidationError("Debe ingresar dos parametros de numeros enteros para ser restados.")
                }else if self.numeroEnteroOpt1! < 1 || self.numeroEnteroOpt2! < 1 {
                    throw ValidationError("Los valores deben ser mayor o igual a 1")
                }
            }

            func run() throws {
                let valor1 = self.numeroEnteroOpt1!
                let valor2 = self.numeroEnteroOpt2!
                print("\(valor1)-\(valor2)=\(valor1-valor2)")
            }
            
        }
        //MARK:- operacion de multiplicación.
        
        struct multiplica: ParsableCommand {
            static var configuration: CommandConfiguration {
                .init(
                    commandName: "multiplica",
                    abstract: "multiplica dos numero eneteros."
                )
            }
            
            @Argument(help: "primer número entero a multiplicar.")
            var numeroEnteroOpt1: Int?
            
            @Argument(help: "segundo número entero a multiplicar.")
            var numeroEnteroOpt2: Int?
           
            func validate() throws {
                if self.numeroEnteroOpt1 == nil || self.numeroEnteroOpt2 == nil {
                    throw ValidationError("Debe ingresar dos parametros de numeros enteros para ser multiplicados.")
                }else if self.numeroEnteroOpt1! < 1 || self.numeroEnteroOpt2! < 1 {
                    throw ValidationError("Los valores deben ser mayor o igual a 1")
                }
            }

            func run() throws {
                let valor1 = self.numeroEnteroOpt1!
                let valor2 = self.numeroEnteroOpt2!
                print("\(valor1) * \(valor2) = \(valor1*valor2)")
            }
        }
        //MARK:- operacion de divivión
        
        struct divide: ParsableCommand {
            static var configuration: CommandConfiguration {
                .init(
                    commandName: "divide",
                    abstract: "divide dos numero eneteros."
                )
            }
            
            @Argument(help: "primer número entero a dividir.")
            var numeroEnteroOpt1: Int?
            
            @Argument(help: "segundo número entero a dividir.")
            var numeroEnteroOpt2: Int?
           
            func validate() throws {
                if self.numeroEnteroOpt1 == nil || self.numeroEnteroOpt2 == nil {
                    throw ValidationError("Debe ingresar dos parametros de numeros enteros para ser divividos.")
                }else if self.numeroEnteroOpt1! < 1 || self.numeroEnteroOpt2! < 1 {
                    throw ValidationError("Los valores deben ser mayor o igual a 1")
                }
            }

            func run() throws {
                let valor1 = self.numeroEnteroOpt1!
                let valor2 = self.numeroEnteroOpt2!
                print("\(valor1) / \(valor2) = \(valor1/valor2) y su resto = \(valor1%valor2)")
            }
        }
        
        
    }
}
    



