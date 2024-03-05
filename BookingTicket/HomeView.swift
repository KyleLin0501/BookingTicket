//
//  HomeView.swift
//  BookingTicket
//
//  Created by 林楷祐 on 2024/2/27.
//

import SwiftUI

struct HomeView: View {
    @State var search: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.white,.gray], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    Image(systemName: "movieclapper.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                    
                    Text("逢甲影城")
                        .font(.title)
                        .bold()
                    
                    ScrollView {
                        HStack {
                            TextField( "請輸入電影名稱...", text: $search)
                                .textFieldStyle(.roundedBorder)
                                
                            Button {
                                
                            } label: {
                                Text("搜尋")
                                    .padding(5)
                                    .background(Color.gray)
                                    .foregroundStyle(Color.white)
                                    .cornerRadius(5)
                            }
                        }
                        .padding()
                       
                        HStack {
                            Text("現正熱映")
                                .bold()
                                .font(.title)
                            Spacer()
                        }
                        .padding()
                        
                        ForEach(0..<4) { i in
                            HStack {
                                MovieView(movie: movieList[i*2])
                                MovieView(movie: movieList[(i*2)+1])
                            }
                        }
                        
                    }
                    
                    
                    
                    
                    
                }
                
            }
        }
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
