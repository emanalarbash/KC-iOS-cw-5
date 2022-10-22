//
//  ContentView.swift
//  myGrocery
//
//  Created by Amona Alarbash on 26/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State var foods = ["cola", "Indomie", "luttuce", "water", "kitkat"]
    @State var newItem = ""
    
    var body: some View {
        VStack{
            List (foods, id: \.self) {
                food in
                HStack{
                    Image(food)
                        .resizable()
                        .scaledToFit()
                        .frame(width:130,height: 130)
                    
                    
                    Text(food)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                }
            }
            
            HStack{
                Button {
                    foods.append(newItem)
                }label: {
                    Image(systemName: "plus")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(width: 50, height:50)
                        .background(Color.green)
                        .cornerRadius(15)
                }
                
                TextField("Inter your new item name" ,  text: $newItem )
                
                Button {
                    foods.remove(at:0)
                }label: {
                    Image(systemName: "minus")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(width: 50, height:50)
                        .background(Color.red)
                        .cornerRadius(15)
                }
                
                
                
                Button {
                    foods .append(foods.randomElement() ?? "strawberry")
                }label: {
                    Image(systemName: "questionmark")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(width: 50, height:50)
                        .background(Color.orange)
                        .cornerRadius(15)
                }
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
