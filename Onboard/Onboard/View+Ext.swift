//
//  View+Ext.swift
//  Onboard
//
//  Created by Furkan Hanci on 8/22/22.
//

import SwiftUI

extension View {
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = true) -> some View {
      if hidden {
        if !remove {
          self.hidden()
        }
      } else {
        self
      }
    }
}
