//
//  ButtonsView.swift
//  SwiftUICourse
//
//  Created by Eymen on 13.08.2023.
//

import SwiftUI

struct ButtonsView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        
            VStack(spacing: 20) {
                Button("Regular Button") {
                    print("Pressed Regular Button")
                }
                
                Button {
                    print("Image Button")
                } label: {
                    Image(systemName: "house")
                    Text("Image Button")
                }
                
                Button {
                    print("Custom Style Button")
                } label: {
                    Text("Custom Style Button")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(.brown)
                        .cornerRadius(10)
                }
                
                Button {
                    
                } label: {
                    Text("Disabled Button")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(.gray)
                        .opacity(0.7)
                }
                .disabled(true)
                
                
                Button {
                    isLoading = true
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        isLoading = false
                    }
                } label: {
                    if isLoading {
                        ProgressView()
                    } else {
                        Text("Loading Button")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(.blue)
                            .cornerRadius(5)
                    }
                }
                .disabled(isLoading)
            }
            .navigationTitle("SwiftUI Buttons")
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
