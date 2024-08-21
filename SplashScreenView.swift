//
//  SplashScreenView.swift
//  h^2
//
//  Created by Ellen Jatul on 8/21/24.
//
import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image(systemName: "Heart")
                        .font(.system(size: 80))
                    Text("Heart to Heart")
                        .font(.system (size: 14))
                        .foregroundColor(.white)
                }
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.0)) {
                                self.size = 0.9
                                self.opacity = 1.00
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background {
                            Color.teal.opacity(0.3)
                                .ignoresSafeArea()
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
    
    struct SplashScreenView_Previews: PreviewProvider {
        static var previews: some View {
            SplashScreenView()
        }
    }
}
