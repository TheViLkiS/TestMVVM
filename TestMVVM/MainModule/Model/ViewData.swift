//
//  ViewData.swift
//  TestMVVM
//
//  Created by Дмитрий Гусев on 10.05.2023.
//

import Foundation

enum ViewData {
    case initial
    case loading(Data)
    case succes(Data)
    case failure(Data)
    
    struct Data {
        let icon: String?
        let title: String?
        let description: String?
        let numberPhone: String?
    }
    
}



