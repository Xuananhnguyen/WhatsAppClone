//
//  ChannelTabScreen.swift
//  WhatsAppClone
//
//  Created by NGUYEN XUAN ANH on 21/2/25.
//

import SwiftUI

struct ChannelTabScreen: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List {
                archivedButton()
                
                ForEach(0..<12) { _ in
                    ChannelItemView()
                }
                
                inboxFooterView()
                    .listRowSeparator(.hidden)
            }
            .navigationTitle("Chats")
            .searchable(text: $searchText)
            .listStyle(.plain)
            .toolbar {
                leadingNavItems()
                trailingNavItems()
            }
        }
    }
}

extension ChannelTabScreen {
    
    @ToolbarContentBuilder
    private func leadingNavItems() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Menu {
                Button(action: {
                    
                }, label: {
                    Label("Select Chats", systemImage: "checkmark.circle")
                })
            } label: {
                Image(systemName: "ellipsis.circle")
            }
        }
    }
    
    @ToolbarContentBuilder
    private func trailingNavItems() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            HStack(spacing: 16) {
                aiButton()
                cameraButton()
                newChatButton()
            }
        }
    }
    
    private func aiButton() -> some View {
        Button(action: {
            
        }, label: {
            Image(.circle)
        })
    }
    
    private func cameraButton() -> some View {
        Button(action: {
            
        }, label: {
            Image(systemName: "camera")
        })
    }
    
    private func newChatButton() -> some View {
        Button(action: {
            
        }, label: {
            Image(.plus)
        })
    }
    
    private func archivedButton() -> some View {
        Button {
            
        } label: {
            Label("Archived", systemImage: "archivebox.fill")
                .bold()
                .padding()
                .foregroundStyle(.gray)
        }
    }
    
    private func inboxFooterView() -> some View {
        HStack {
            Image(systemName: "lock.fill")
            (
                Text("Your presonal message are ")
                +
                Text("end-to-end encrypted")
                    .foregroundStyle(.blue)
            )
        }
        .foregroundStyle(.gray)
        .font(.caption)
        .padding(.horizontal)
    }
    
}

#Preview {
    ChannelTabScreen()
}
