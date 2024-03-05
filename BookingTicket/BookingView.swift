//
//  BookingView.swift
//  BookingTicket
//
//  Created by 林楷祐 on 2024/2/27.
//

import SwiftUI

struct BookingView: View {
    @State var theaterIndex: Int = 0
    @State var movieIndex: Int = 0
    @State var aldult: Int = 0
    @State var child: Int = 0
    @State var name: String = ""
    @State var phone: String = ""
    @State var showAlert: Bool = false
    let theater = ["台北","台中","台南"]
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.white,.gray], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Text("請選擇劇院")
                            .bold()
                        Picker("Pick a theater", selection: $theaterIndex) {
                            ForEach(theater.indices, id: \.self) { name in
                                Text(theater[name]).tag(name)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    
                    if theaterIndex == 0 {
                        Text("台北市西米路123號")
                    }
                    else if theaterIndex == 1 {
                        Text("台中市西屯區文華路100號")
                    }
                    else if theaterIndex == 2 {
                        Text("台南市冬瓜路10號")
                    }
                    
                    HStack {
                        Text("請選擇電影")
                            .bold()
                        Picker("Pick a movie", selection: $movieIndex) {
                            ForEach(movieList.indices, id: \.self) { name in
                                Text(movieList[name].name).tag(name)
                            }
                        }
                        .pickerStyle(.wheel)
                        
                    }
                    
                    HStack(alignment: .top) {
                        Text("請選擇人數")
                            .bold()
                        VStack {
                            Stepper("全票(300元/張）    \(aldult)",value: $aldult, in:0...10)
                                .bold()
                            Stepper("兒童票(160元/張)   \(child)",value: $child, in:0...10)
                                .bold()
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("請輸入姓名")
                            .bold()
                        TextField("", text:$name)
                            .textFieldStyle(.roundedBorder)
                        
                    }
                    
                    HStack {
                        Text("請輸入電話")
                            .bold()
                        TextField("", text:$phone)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.numberPad)
                        
                    }
                    
                    Spacer()
                    
                    Button {
                        showAlert = true
                    } label: {
                        Text("送出訂單")
                            .bold()
                            .padding()
                            .background(Color.white)
                            .foregroundStyle(Color.gray)
                            .cornerRadius(10)
                    }
                    .alert(isPresented: $showAlert, content: {
                        Alert(title: Text("訂票資訊"),
                              message: Text("劇院：\(theater[theaterIndex])\n電影：\(movieList[movieIndex].name)\n全票：\(aldult)\n兒童票:\(child)\n姓名：\(name)\n電話：\(phone)"),
                              primaryButton: .destructive(Text("取消")),
                              secondaryButton: .default(Text("確認")))
                    })
                    

                   
                }
                .padding()
                
            }
            .toolbar() {
                ToolbarItem {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus")
                            .foregroundStyle(Color.black)
                    })
                }
            }
            .navigationTitle("訂票系統")
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
