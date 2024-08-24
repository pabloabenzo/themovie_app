//
//  SearchView.swift
//  themovieapp
//
//  Created by Pablo Benzo on 23/08/2024.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchTerm = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Rectangle()
                        .background(.green)
                    //                    .ignoresSafeArea()
                }
            }
            .searchable(text: $searchTerm, prompt: "Search")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Label {
                            Text("")
                        } icon: {
                            Image(systemName: "arrowshape.backward")
                                .tint(.black)
                        }
                        
                    }
                }
                
                ToolbarItem {
                    Text("Search")
                        .frame(width: 250, height: 35, alignment: .center)
                        .font(.custom("Poppins", size: 16))
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        // info
                    }) {
                        Label {
                            Text("")
                        } icon: {
                            Image(systemName: "info.circle")
                                .tint(.black)
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    SearchView()
}
