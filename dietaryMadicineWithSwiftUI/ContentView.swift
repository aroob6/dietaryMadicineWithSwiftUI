//
//  ContentView.swift
//  dietaryMadicineWithSwiftUI
//
//  Created by bora on 2022/07/29.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            HStack {
                Image("logo").frame(height: 60)
                Spacer()
            }.padding()
            
            HStack {
                Text("당신을 위한 종합 \n영양 큐레이팅 서비스")
                    .bold()
                    .font(.system(size: 24))
                Spacer()
            }.padding()
            
            Spacer().frame(height: 150)
            VStack {
                Button(action: {
                    print("애플")
                }) {
                    HStack(alignment: .center) {
                        Image("apple")
                        Spacer()
                        Text("애플 로그인").bold().font(.system(size: 15))
                        Spacer()
                    }.padding()
                }.frame(maxWidth: .infinity, maxHeight: 60)
                    .background(.black)
                    .foregroundColor(.white)
                
                Button(action: {
                    print("카카오")
                }) {
                    HStack(alignment: .center) {
                        Image("kakao").imageScale(.small)
                        Spacer()
                        Text("카카오 로그인").bold().font(.system(size: 15))
                        Spacer()
                    }.padding()
                }.frame(maxWidth: .infinity, maxHeight: 60)
                    .background(.yellow)
                    .foregroundColor(.black)
                
                Button(action: {
                    print("구글")
                }) {
                    HStack(alignment: .center) {
                        Image("google").imageScale(.small)
                        Spacer()
                        Text("구글 로그인").bold().font(.system(size: 15))
                        Spacer()
                    }.padding()
                }.frame(maxWidth: .infinity, maxHeight: 60)
                    .background(.gray)
                    .foregroundColor(.black)
                Button("이메일 로그인") {
                    print("이메일")
                }.frame(maxWidth: .infinity, maxHeight: 60)
                Spacer().frame(height: 20)
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity).padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
