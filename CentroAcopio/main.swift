//
//  main.swift
//  CentroAcopio Majo
//
//  Created by Enrique Gómez Tagle on 22/11/23.
//

import Foundation

struct voluntario {
    var nombre: String = ""
    var edad: Int = 0
}

print("Bienvenidos al centro de acopio")
var recaudado = 0.0
var voluntarios_casas = 0
var bandera = true
var ropa = [String]()
var comida = [String]()
var medicina = [String]()
var herramientas = [String]()
var voluntarios = [voluntario]()

print("Después de lo ocurrido en Acapulco por el huracán Otis, se ha propuesto hacer un centro de acopio para ayudar a los damnificados:\n ¿Por qué ayudar a los damnificados en acapulco?\n- Mas de 100 familias perdieron a un familiar.\n- 273,844 viviendas afectadas.\n- Pérdida económica de 15 millones de dólares\n- La mayoría de las escuelas siguen sin clases.\n- Hay comunidades que todavía no tienen acceso al agua o a la luz")

while(bandera == true){
    print("Quieres  aportar a la causa?\n1) Donación Económica\n2) Centro de acopio\n3) Construir Casas \n0) Salir")
    let aportacion = Int(readLine()!)!

    switch(aportacion){
        case 1:
        print("Ingresa la cantidad a donar: ")
        let donacion = Double(readLine()!)!
        print("Donados exitosamente \(donacion) a la cuenta del centro de acopio")
        recaudado += donacion
        print("Tenemos recaudado: \(recaudado)")
            break
        case 2:
        print("Ingresa la opción deseada:\n1) Ropa\n2) Alimentos\n3) Medicinas") // Para este caso: Investigar arreglos para coleccionar las prendas/alimentos/medicinas
        // LINK: https://developer.apple.com/documentation/swift/array
        // Para todos estos hay que solo añadir el elemento nuevo al arreglo
        let opcion = Int(readLine()!)!
        switch(opcion){
        case 1:
            print("Escribe la prenda que deseas donar")
            let prenda = readLine()!
            ropa.append(prenda)
            print("Tenemos guardado: ")
            ropa.forEach { prenda in
                print(prenda)
            }
            break
        case 2:
            print("Escribe el alimento que deseas donar")
            let alimento = readLine()!
            comida.append(alimento)
            print("Tenemos guardado: ")
            comida.forEach { alimento in
                print(alimento)
            }
            break
        case 3:
            print("Escribe el medicamento que deseas donar")
            let medicamento = readLine()!
            medicina.append(medicamento)
            print("Tenemos guardado: ")
            medicina.forEach { medicamento in
                print(medicamento)
            }
            break
        default:
            print("Opción inválida")
            break
        }
            break
        case 3:
            print("Selecciona la opción:\n1) Ir de voluntario\n2) Aportar herramientas") // Guardamos una persona con 2 datos en lugar de solo 1 cosa (se llama struct)
        // LINK: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures/
            let opcion = Int(readLine()!)!
        switch(opcion){
        case 1:
            print("¿Cuál es tu nombre?")
            let nombre = readLine()!
            
            print("¿Cuál es tu edad?")
            let edad = Int(readLine()!)!
            
            let temporal = voluntario(nombre: nombre, edad: edad)
            voluntarios.append(temporal)
            print("Te añadiste a la lista de voluntarios!!")
            voluntarios_casas += 1
            print("---------------------------------------------")
            print("\tLista de voluntarios:")
            print("---------------------------------------------")
//            for i in 0..<voluntarios.count {
            for i in 0...voluntarios.count-1 {
                print("\tNombre: \(voluntarios[i].nombre)\t Edad: \(voluntarios[i].edad)")
            }
//            voluntarios.forEach { voluntario in
//                print("\tNombre: \(voluntario.nombre)\t Edad: \(voluntario.edad)")
//            }
            print("---------------------------------------------")
            print("Ahora tenemos \(voluntarios_casas) voluntarios.")
                        
        case 2:
            print("Añade la herramienta: ")
            let herramienta = readLine()!
            herramientas.append(herramienta)
            print("Tenemos guardado: ")
            herramientas.forEach { herramienta in
                print(herramienta)
            }
        default:
            print("Opcion inválida")
                break
        }
            break
        case 0:
            print("Saliste...Gracias")
            bandera = false
            break
        default:
        print("Opcion inválida")
            break
    }
}
