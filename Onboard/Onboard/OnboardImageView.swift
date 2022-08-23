//
//  OnboardImageView.swift
//  Onboard
//
//  Created by Furkan Hanci on 8/22/22.
//

import SwiftUI

struct OnboardImageView: View {
    var selection : Int
    
    var image : String {
        switch selection{
        case 0:
            return "iphone1"
        case 1:
            return "iphone2"
        case 2:
            return "iphone3"
        case 3:
            return "iphone4"
        case 4:
            return "iphone5"
        case 5:
            return "iphone6"
        default:
            return "iphone1"
        }
    }
    
    var body: some View{
        Image(image)
            .resizable()
            .scaledToFit()
            .foregroundColor(.white)
    }
}

struct OnboardImageView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardImageView(selection: 3)
    }
}
