//
//  HomeView.swift
//  themovieapp
//
//  Created by Pablo Benzo on 23/08/2024.
//

import SwiftUI

struct HomeView: View {
    
    public var presenter: HomePresenter?
    var homeInteractor = HomeInteractor()
    @State var models: [PopularMovieModel] = []
    @State var searchTerm = ""
    
    //    var filteredMovies: [PopularMovieModel] {
    //        guard !searchTerm.isEmpty else { return presenter!.models }
    //        return presenter!.models.filter { $0.title.localizedCaseInsensitiveContains(searchTerm) }
    //    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    Text("What do you want to watch?")
                        .bold()
                        .font(.custom("Poppins", size: 18))
                        .frame(width: 317, height: 27, alignment: .leading)
                    
                        .padding(.leading, -10).padding(.top, 30)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(models, id: \.title) { movie in
                                AsyncImage(url: URL(string: "http://image.tmdb.org/t/p/w200" + movie.poster_path))
                                //                                    .scaledToFill()
                                    .frame(width: 250, height: 150)
                                    .padding()
                            }
                        }
                        
                    }
                }
                .searchable(text: $searchTerm, prompt: "Search")
                .toolbar {
                    ToolbarItem {
                        Text("What do you want to watch?")
                            .bold()
                            .font(.custom("Poppins", size: 18))
                            .frame(width: 350, height: 27, alignment: .leading)
                            .padding(.top, 30).padding(.bottom, 30)
                    }
                }
                
                HStack {
                    Text("Now playing")
                        .font(.custom("Poppins", size: 16))
                        .bold()
                        .padding()
                    Text("Upcoming")
                        .font(.custom("Poppins", size: 16))
                        .bold()
                        .padding()
                    Text("Top rated")
                        .font(.custom("Poppins", size: 16))
                        .bold()
                        .padding()
                    
                }
                .frame(width: UIScreen.main.bounds.size.width)
                
                
                ScrollView(.horizontal) {
                    TabView {
                        NowPlayingView()
                        UpcomingView()
                        TopRatedView()
                    }
                    .tabViewStyle(.page)
                    .frame(width: 329, height: 453, alignment: .center)
                    
                }
                .task {
                    let result = await homeInteractor.getListOfMovies().results
                    self.models = result
                }
                
                
                
            }
            
            
        }
    }
    
}
    
#Preview {
    HomeView()
}
