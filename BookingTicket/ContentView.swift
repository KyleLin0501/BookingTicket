//
//  ContentView.swift
//  BookingTicket
//
//  Created by 林楷祐 on 2024/2/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView() {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                BookingView()
                    .tabItem {
                        Label("Ticket", systemImage: "ticket")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
