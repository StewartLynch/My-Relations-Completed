//
//  PersonListViewModel.swift
//  PersonListViewModel
//
//  Created by Stewart Lynch on 2021-07-28.
//

import Foundation
import SwiftUI

class PersonListViewModel: ObservableObject {
    @Published var relations: [Person] = []
    
    func getRelations() {
        relations = Person.myRelations
    }
    
    func move(fromOffsets: IndexSet, toOffset: Int) {
        relations.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
    
    func remove(atOffsets: IndexSet) {
        relations.remove(atOffsets: atOffsets)
    }
    
    func remove(_ relation: Person) {
        withAnimation {
            relations = relations.filter {$0.id != relation.id}
        }
        
    }
    func toggleImmedateFamily(_ relation: Person) {
        guard let index = relations.firstIndex(where: {$0.id == relation.id}) else { return }
        withAnimation(Animation.easeIn(duration: 0.5).delay(0.25)) {
            relations[index].immediate.toggle()
        }
        
    }
}
