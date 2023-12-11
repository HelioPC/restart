//
//  CircleGroupView.swift
//  Restart
//
//  Created by Eliude Vemba on 11/12/23.
//

import SwiftUI

struct CircleGroupView: View {
    // MARK: - PROPERTIES
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
    }
}

// MARK: - PREVIEW

#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea()
        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
    }
}
