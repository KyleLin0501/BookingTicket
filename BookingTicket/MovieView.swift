//
//  MovieView.swift
//  BookingTicket
//
//  Created by 林楷祐 on 2024/2/27.
//

import SwiftUI

struct MovieView: View {
    var movie: Movie
    var body: some View {
        NavigationLink {
            MovieView(movie: movie)
        } label: {
            VStack {
                Image(movie.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Text(movie.name)
                    .font(.title2)
                    .foregroundStyle(Color.black)
            }
            .padding()
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie:Movie(name: "不可能的任務", image: "movie01") )
    }
}

struct Movie{
    var name: String
    var image: String
}

let movieList: [Movie]  = [
    Movie(name: "不可能的任務", image: "movie01"),
    Movie(name: "水行俠", image: "movie02"),
    Movie(name: "小丑", image: "movie03"),
    Movie(name: "還錢", image: "movie04"),
    Movie(name: "你的名字", image: "movie05"),
    Movie(name: "旺卡", image: "movie06"),
    Movie(name: "鈴芽之旅", image: "movie07"),
    Movie(name: "月老", image: "movie08"),
]
