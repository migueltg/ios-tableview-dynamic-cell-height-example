//
//  Data.swift
//  UITableView Dynamic Cell Height
//
//  Created by Miguel Tejedor on 10/3/18.
//  Copyright © 2018 Miguel Tejedor. All rights reserved.
//

import Foundation

enum Title: String {
    case short = "Lorem ipsum dolor"
    case medium = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    case long = "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas, las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum."
    
    static func randomTitle() -> String {
        let titleToGetRandomly = [Title.short, Title.medium, Title.long]
        let index = Int(arc4random_uniform(UInt32(titleToGetRandomly.count)))
        let title = titleToGetRandomly[index].rawValue
        return title
    }
    
    static func getArrayOfRamdomTitlesWith(nElements: Int) -> [String] {
        var arrayTitles = [String]()
        for _ in 0...nElements {
            arrayTitles.append(Title.randomTitle())
        }
        return arrayTitles
    }
}
