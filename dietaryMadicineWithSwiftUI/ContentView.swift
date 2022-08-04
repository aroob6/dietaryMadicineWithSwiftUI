//
//  ContentView.swift
//  dietaryMadicineWithSwiftUI
//
//  Created by bora on 2022/07/29.
//

import SwiftUI
struct LoginData {
    let name: String
    let imgName: String
    let backColor: Color
    let textColor: Color
}

struct ContentView: View {
    
    let appleData = LoginData(name: "애플 로그인", imgName: "apple", backColor: .black, textColor: .white)
    let kakaoData = LoginData(name: "카카오 로그인", imgName: "kakao", backColor: .yellow, textColor: .black)
    let googleData = LoginData(name: "구글 로그인", imgName: "google", backColor: .gray, textColor: .black)
    let emailData = LoginData(name: "이메일 로그인", imgName: "", backColor: .white, textColor: .black)
    
    @State var tag: Int? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                LogoView()
                Spacer()
                VStack {
                    NavigationLink(destination: EmailLoginView(), tag: 1, selection: self.$tag ) {
                        EmptyView()
                    }
                    NavigationLink(destination: EmailLoginView(), tag: 2, selection: self.$tag ) {
                        EmptyView()
                    }
                    NavigationLink(destination: EmailLoginView(), tag: 3, selection: self.$tag ) {
                        EmptyView()
                    }
                    NavigationLink(destination: EmailLoginView(), tag: 4, selection: self.$tag ) {
                        EmptyView()
                    }
                    
                    Button( action : { self.tag = 1 }) {
                        LoginButtonView(loginData: appleData)
                    }
                    Button( action : { self.tag = 2 }) {
                        LoginButtonView(loginData: kakaoData)
                    }
                    Button( action : { self.tag = 3 }) {
                        LoginButtonView(loginData: googleData)
                    }
                    Button( action : { self.tag = 4 }) {
                        LoginButtonView(loginData: emailData)
                    }
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity).padding()
        }
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
    let loginData: LoginData
    
    var body: some View {
        HStack(alignment: .center) {
            Image(loginData.imgName)
            Spacer()
            Text(loginData.name).bold().font(.system(size: 15))
            Spacer()
        }.padding().frame(maxWidth: .infinity, maxHeight: 60)
            .background(loginData.backColor)
            .foregroundColor(loginData.textColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
            .previewDisplayName("iPhone 13 Pro")
    }
}
