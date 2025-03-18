//
//  AthleteBadge.swift
//  DivisionFinder
//
//  Created by Alisa Jin on 17/03/2025.
//

import SwiftUI

struct AthleteBadge: View {
    
    @Binding var isActive: Bool
    
    let name: String
    var gender: String
    let beltColor: String
    let studioName: String
    let divisions: [String]
    
    @State private var offset: CGFloat = 1000
    
    var body: some View {
        ZStack {
            Color(.white)
                .opacity(0.1)
                .onTapGesture {
                    close()
                }
            
            VStack {
                Text("Santa Cruz Open Tae Kwon Do \n Championship 2025")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 40)
                    .multilineTextAlignment(.center)
                Divider()
                    .frame(width: 500, height: 3)
                    .overlay(.black)
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(name)
                            .underline()
                        Text("Gender: \(gender[gender.startIndex])")
                        Text("Belt Color: \(beltColor)")
                        Text("Studio: \(studioName)")
                    }
                    .padding()
                    .multilineTextAlignment(.leading)
                    Image("SCOpenLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                    
                }
                
                Divider()
                    .frame(width: 500, height: 3)
                    .overlay(.black)
                
                
                VStack(alignment: .leading){
                    ForEach(divisions, id: \.self) { division in
                        Text(division)
                            .padding(3)
                            .fontWeight(.bold)
                    }
                    .multilineTextAlignment(.leading)
                }
                
                Divider()
                    .frame(width: 500, height: 3)
                    .overlay(.black)
                    .padding(15)
                Text("ATHLETE")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 35)
                
            }
            .background(.white)
            .fixedSize(horizontal: false, vertical: true)
            .clipShape(RoundedRectangle(cornerRadius: 20)
            )
            .shadow(radius: 20)
            .overlay {
                VStack {
                    HStack {
                        Spacer()
                        Button{
                            close()
                        } label: {
                            Image(systemName: "xmark")
                                .font(.title2)
                                .fontWeight(.medium)
                                .tint(.black)
                        }
                    }
                    Spacer()
                }
                .padding()
            }
            .offset(x: 0, y: offset)
            .onAppear {
                withAnimation(.spring()) {
                    offset = 0
                }
            }
        }
        .ignoresSafeArea()
    }
    
    func close() {
        withAnimation(.spring()) {
            offset = 1000
            isActive = false
        }
    }
}

#Preview {
    AthleteBadge(isActive: .constant(true), name: "Alisa Jin", gender: "Female", beltColor: "Brown", studioName: "Korean Martial Arts Academy", divisions: ["O-10 Open Poomsae", "P-10 Regular Poomsae", "K-10 Sparring"])
}
