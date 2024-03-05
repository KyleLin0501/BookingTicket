//
//  MovieDetailView.swift
//  BookingTicket
//
//  Created by 林楷祐 on 2024/3/2.
//

import SwiftUI

struct MovieDetailView: View {
    @State var movieName: String
    @State var movieImage: String
    var body: some View {
        Text("\(movieName)")
            .font(.title)
            .bold()
        Image(movieImage)
            .resizable()
            .scaledToFit()
            .frame(width: 150)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movieName: "不可能的任務", movieImage: "movie01")
    }
}
   

