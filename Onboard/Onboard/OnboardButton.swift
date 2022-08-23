//
//  OnboardButton.swift
//  Onboard
//
//  Created by Furkan Hanci on 8/22/22.
//

import SwiftUI

struct OnboardButton: View {
    @Binding var selection: Int
    @Binding var onTap: Bool
    var title: String?
    
    var body: some View{
        
        Button {
            UIImpactFeedbackGenerator().impactOccurred()
            withAnimation {
                selection += 1
                onTap.toggle()
            }
        } label: {
            Text(title ?? "Next")
                .font(.system(size: 25))
                .foregroundColor(.white)
                .fontWeight(.bold)
            
                .frame(width: UIScreen.main.bounds.size.width / 1.15, height: 30)
                .padding(.vertical, 15)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.blue)
                )
            
        }
    }
}

struct SetupExtensionButton_Previews: PreviewProvider {
    static var previews: some View {
        OnboardButton(selection: .constant(3), onTap: .constant(false))
    }
}
