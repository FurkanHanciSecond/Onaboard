//
//  ContentView.swift
//  Onboard
//
//  Created by Furkan Hanci on 8/22/22.
//

import SwiftUI

struct ContentView: View {
    @State private var openOnboard : Bool = false
    var body: some View {
        Button {
            self.openOnboard = true
        } label: {
            Text("Open Onboard")
        }
        
        .fullScreenCover(isPresented: $openOnboard, content: {
            OnboardView()
        })

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
