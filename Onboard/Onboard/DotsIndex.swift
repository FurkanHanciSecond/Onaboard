//
//  DotsIndex.swift
//  Onboard
//
//  Created by Furkan Hanci on 8/22/22.
//

import SwiftUI
struct DotsIndexView: View {
    let dotCount: Int
    let selectedIndex: Int
    
    var body: some View {
        HStack {
            ForEach(0...dotCount, id: \.self) { i in
                Circle()
                    .frame(width: 7, height: 7)
                    .foregroundColor(selectedIndex == i ? .blue : .white)
            }
        }
    }
}

struct DotsIndexView_Previews: PreviewProvider {
    static var previews: some View {
        DotsIndexView(dotCount: 3, selectedIndex: 2)
    }
}
