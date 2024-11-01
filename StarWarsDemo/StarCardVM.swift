//
//  StarCardVM.swift
//  StarWarsDemo
//
//  Created by Armando Perez on 29/10/24.
//

import SwiftUI

@Observable
final class StarCardVM {
    let repository: DataRepository
    
    var cards: [StarCard]
    
    init(repository: DataRepository = Repository()) {
        self.repository = repository
        do {
            cards = repository.getData()
        } catch {
            cards = []
        }
    }
}
