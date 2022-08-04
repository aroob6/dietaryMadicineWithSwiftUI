//
//  EmailLoginView.swift
//  dietaryMadicineWithSwiftUI
//
//  Created by bora on 2022/08/04.
//

import SwiftUI

struct EmailLoginView: View {
    @State var id: String = ""
    @State var tag: Int? = nil
    
    var body: some View {
            VStack {
                VStack {
                    HStack {
                        Text("이메일").bold().font(.system(size: 15))
                        Spacer()
                    }
                    TextField("이메일 입력", text: $id).frame(height: 30)
                    AnyView(Color.underLine).frame(width: .infinity, height: 1)
                    
                    HStack {
                        Text("비밀번호").bold().font(.system(size: 15))
                        Spacer()
                    }
                    SecureField("비밀번호 입력", text: $id).frame(height: 30)
                    AnyView(Color.underLine).frame(width: .infinity, height: 1)
                    Spacer().frame(height: 30)
                    HStack {
                        Button( action : {
                            //                    self.tag = 4
                        }) {
                            Text("회원가입").font(.system(size: 13)).foregroundColor(Color.textGray)
                        }
                        Spacer().frame(width: 20)
                        Button( action : {
                            //                    self.tag = 4
                        }) {
                            Text("비밀번호 재설정").font(.system(size: 13)).foregroundColor(Color.textGray)
                        }
                    }
                }.padding()
                
                Spacer()
                
                NavigationLink(destination: MainView(), tag: 5, selection: self.$tag ) {
                    EmptyView()
                }
                
                Button( action : {
                    self.tag = 5
                }) {
                    Text("로그인").bold().font(.system(size: 18))
                        .foregroundColor(Color.white)
                }.frame(maxWidth: .infinity, maxHeight: 60).background(Color.mainColor)
                
                
            }.navigationTitle("로그인").navigationBarTitleDisplayMode(.inline)
    }
}

struct EmailLoginView_Previews: PreviewProvider {
    static var previews: some View {
        EmailLoginView()
            .previewDevice("iPhone 13 Pro")
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
            .previewDisplayName("iPhone 13 Pro")
    }
}
