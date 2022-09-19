//
//  ContentView.swift
//  cw6p1
//
//  Created by JARRAH MAYYAL on 19/09/2022.
//

import SwiftUI
struct Students: Identifiable {
    let id = UUID()
    var name : String
    var year : Int
    var age : Int
}

struct ContentView: View {
    
    
    var student = [Students(name: "Jarrah", year: 4, age: 21),
                   Students(name: "ahmed", year: 2, age: 19),
                   Students(name: "Naser", year: 1, age: 18)]
    
    var body: some View {
        ZStack{
            Color.clear.ignoresSafeArea()
            VStack{
                
                
                Image("st")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 170, height: 170)
                
                ScrollView{
                    
                    VStack{
                        ForEach(student) { student in
                            VStack(alignment: .center) {
                                
                                Text("name: \(student.name)")
                                
                                Text("age: \(student.age)")
                                
                                Text("year: \(student.year)")
                                
                                Divider()
                                
                            }
                            
                        }
                        
                        
                    }
                    
                }
                Text("عدد الطلبة المسجلين \(student.count)")
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
