//
//  MainViewModel.swift
//  TestMVVM
//
//  Created by Дмитрий Гусев on 10.05.2023.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData) -> ())? {get set}
    func startFetch()
}


final class MainViewModel: MainViewModelProtocol {
    
   public var updateViewData: ((ViewData) -> ())?
    
    init() {
        updateViewData?(.initial)
    }
    
   public func startFetch() {
        // start loading
       
       updateViewData?(.loading(.init(icon: nil,
                                      title: nil,
                                      description: nil,
                                      numberPhone: nil)))
       
       DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
           self?.updateViewData?(.succes(ViewData.Data(icon: "success", title: "Success", description: "Good", numberPhone: nil)))
           
       }
       DispatchQueue.main.asyncAfter(deadline: .now() + 6) { [weak self] in
           self?.updateViewData?(.failure(ViewData.Data(icon: "failure", title: "Error", description: "Not User", numberPhone: nil)))
           
       }
    }
    
    
    
    
}
