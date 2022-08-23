//
//  OnboardView.swift
//  Onboard
//
//  Created by Furkan Hanci on 8/22/22.
//

import SwiftUI

struct OnboardView: View {
    @Environment(\.presentationMode) private var presentationMode
    @State private var selection = 0
    @State private var opacity = 1.0
    @State private var onTap: Bool = false
    
    var body: some View {
        VStack {
            TabView(selection: $selection.animation()) {
                ForEach(0...6, id: \.self) { i in
                    VStack {
                            OnboardImageView(selection: i)
                                .padding(.top , 10)
                        
                            OnboardText(selection: i)
                                .padding(.bottom , 10)
                        

                    }
                    .isHidden(i == 6, remove: false)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            OnboardButton(selection: $selection.animation(), onTap: $onTap,
                                 title: selection == 5 ? "Go Back To Settings" : nil)
            .padding(.bottom)
            
            DotsIndexView(dotCount: 5, selectedIndex: selection)
            
            
        }
        .padding(.vertical)
        .background(
            Color.black
                .ignoresSafeArea())
        .onChange(of: selection, perform: { change in
            if change == 6 {
                presentationMode.wrappedValue.dismiss()
            }
        })
    }
}




struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
