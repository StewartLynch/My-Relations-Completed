//
//  ContentView.swift
//  My Relations
//
//  Created by Stewart Lynch on 2021-07-27.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = PersonListViewModel()
    @State private var isEditing = false
    var body: some View {
        List {
            ForEach(Array(viewModel.relations.enumerated()), id: \.offset) { index, relation in
                ListRow(relation: relation, index: index)
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Family") {
                            viewModel.toggleImmedateFamily(relation)
                        }.tint(.teal)
                    }
                    .swipeActions(edge: .trailing) {
                        Button("Delete", role: .destructive) {
                            viewModel.remove(relation)
                        }
                    }
            }
            .onMove(perform: viewModel.move)
//            .onDelete(perform: viewModel.remove)
        }
        .task {
            viewModel.getRelations()
        }
        .environment(\.editMode, .constant(self.isEditing ? EditMode.active : EditMode.inactive))
        .navigationTitle("My relations")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(isEditing ? "Done" : "Re-order") {
                    isEditing.toggle()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
        
    }
}




