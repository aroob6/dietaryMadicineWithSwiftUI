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
            LogoView()
            Spacer().frame(height: 150)
            VStack {
                LoginButtonView(name: "애플 로그인", imgName: "apple", backColor: .black, textColor: .white)
                LoginButtonView(name: "카카오 로그인", imgName: "kakao", backColor: .yellow, textColor: .black)
                LoginButtonView(name: "구글 로그인", imgName: "google", backColor: .gray, textColor: .black)
                LoginButtonView(name: "이메일 로그인", imgName: "", backColor: .white, textColor: .black)
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity).padding()
    }
}

struct LogoView: View {
    var body: some View {
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
    }
}

struct LoginButtonView: View {
    let name: String
    let imgName: String
    let backColor: Color
    let textColor: Color
    
    var body: some View {
        Button(action: {
            print("애플")
        }) {
            HStack(alignment: .center) {
                Image(imgName)
                Spacer()
                Text(name).bold().font(.system(size: 15))
                Spacer()
            }.padding()
        }.frame(maxWidth: .infinity, maxHeight: 60)
            .background(backColor)
            .foregroundColor(textColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
