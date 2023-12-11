//
//  HomeView.swift
//  Restart
//
//  Created by Eliude Vemba on 06/12/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES
    
    // If the key exists on app storage, the initialization will be skipped
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            // MARK: - HEADER
            
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)

                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
            // MARK: - CENTER
            
            Text("The time that leadsto mastery is dependent on the intensity of our focus")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            // MARK: - FOOTER

            Spacer()
            
            Button {
                isOnboardingViewActive = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
    }
}

#Preview {
    HomeView()
}
