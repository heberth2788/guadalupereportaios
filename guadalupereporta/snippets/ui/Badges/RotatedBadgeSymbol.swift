//
//  RotatedBadgeSymbol.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 29/05/25.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
        
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 6))
}
