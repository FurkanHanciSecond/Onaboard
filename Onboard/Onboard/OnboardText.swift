//
//  OnboardText.swift
//  Onboard
//
//  Created by Furkan Hanci on 8/22/22.
//

import SwiftUI

struct OnboardText: View{
    var selection : Int
    
    var body: some View{
        VStack(spacing: 10) {
            Text(getText())
                .foregroundColor(.white)
                .font(.system(size: 25))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            
            switch selection {
            case 1:
                Text("AutoSend on apps like Snapchat and TikTok Direct Messages. Any app that has a send button built into the keyboard is compatible with AutoSend.")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
            default:
                Text("")
            }
            
        }
    }
    
    private func getText() -> String {
        switch selection {
            case 0: return "Paste with a tap"
            case 1: return "SnapChat with Auto Send"
            case 2: return "Hold to AutoPaste"
            case 3: return "Adjust AutoPaste Speed"
            case 4: return "Add new Snaps"
            case 5: return "Emplify Snaps"
            default: return ""
        }
    }
    
    private func getDetailText() -> String {
      return ""
    }
}

struct SetupExtensionHeaderText_Previews: PreviewProvider {
    static var previews: some View {
        OnboardText(selection: 2)
    }
}
