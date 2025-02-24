//
//  CommunityTabScreen.swift
//  WhatsAppClone
//
//  Created by NGUYEN XUAN ANH on 21/2/25.
//

import SwiftUI

struct CommunityTabScreen: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Image(.communities)
                    
                    Group {
                        Text("Stay connected with a community")
                            .font(.title2)
                        
                        Text("Communities bring members together in topic-based groups. Any community you're added to will appear here.")
                            .foregroundStyle(.gray)
                    }
                    .padding(.horizontal, 5)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("See example communities >")
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                    })
                    
                    createNewCommunityButton()
                }
                .padding()
                .navigationTitle("Communities")
            }
        }
    }
    
    private func createNewCommunityButton() -> some View {
        Button(action: {
            
        }, label: {
            Label("New Community", systemImage: "plus")
                .bold()
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(10)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        })
        .padding()
    }
}

#Preview {
    CommunityTabScreen()
}
