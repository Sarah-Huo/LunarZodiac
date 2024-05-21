//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Huo, Sarah Z on 2/2/24.
//
import SwiftUI

struct ContentView: View {
    @State private var year = 2020
    @State private var imageNumber = 0
    @State private var imageName = "image0"
    
    
    var body: some View {
        VStack {
            Text(String(year))
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.red)
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
            
            Spacer()
            
            HStack {
                
                Button("<") {
                    year-=1
                    imageNumber = (imageNumber > 0 ? imageNumber - 1: 11)
                    imageName = "image" + String(imageNumber)
                }
                .buttonStyle(.borderedProminent)

                .tint(.red)
                .padding()
                Spacer()
                
                Button(">") {
                    year+=1
                    imageNumber = (imageNumber < 11 ? imageNumber + 1: 0)
                    imageName = "image" + String(imageNumber)
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .padding()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
