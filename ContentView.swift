//
//  ContentView.swift
//  h^2
//
//  Created by Ellen Jatul on 8/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Choose your\n     deck")
                .font(.largeTitle)
                .padding()
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.gray.opacity(0.5))
                    .frame(width: 150, height: 150)
                RoundedRectangle(cornerRadius: 10)
                    .fill(.yellow.opacity(0.5))
                    .frame(width: 150, height: 150)
                }
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue)
                    .frame(width: 150, height: 150)
                RoundedRectangle(cornerRadius: 10)
                    .fill(.orange.opacity(0.5))
                    .frame(width: 150, height: 150)
            }
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white.opacity(0.5))
                    .frame(width: 150, height: 150)
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black)
                    .frame(width: 150, height: 150)
            }
        
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.teal.opacity(0.3)
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
   }
}
