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
            Text("Home")
                .font(.largeTitle)
            
            Button {
                isOnboardingViewActive = true
            } label: {
                Text("Restart")
            }
        }
    }
}

#Preview {
    HomeView()
}
