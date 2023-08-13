//
//  OnboardingScreen.swift
//  warchallenge
//
//  Created by Ellie on 6/26/23.
//

import SwiftUI

struct OnboardingView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            
            ZStack  {
                
                    
                    Image("onboardingImage")
                    .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)

                
                    VStack(spacing: 20) {
                        Spacer()
                        
                        Text("Welcome to Epic Card Brawl-aha!")
                            .font(.system(size: 23))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        Spacer()
                        
                        NavigationLink(destination: ContentView(), isActive: $isActive) {
                            HStack {
                                Text("Conquer the battlefield with your cards")
                                    .font(.system(size: 18))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 18))
                                    .foregroundColor(.white)
                            }
                            .padding(10)
                        }
                        
                        Spacer()
                    }
                  
                }
            }
        .navigationViewStyle(StackNavigationViewStyle())
        }
    }




struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
