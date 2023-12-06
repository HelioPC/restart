//
//  OnboardingView.swift
//  Restart
//
//  Created by Eliude Vemba on 06/12/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    // If the key exists on app storage, the initialization will be skipped
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button {
                isOnboardingViewActive = false
            } label: {
                Text("Start")
            }
        }
    }
}

#Preview {
    OnboardingView()
}
