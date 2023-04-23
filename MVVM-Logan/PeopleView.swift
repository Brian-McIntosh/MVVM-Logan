//
//  ContentView.swift
//  MVVM-Logan
//
//  Created by Brian McIntosh on 4/22/23.
//

import SwiftUI

// THE VIEW
struct PeopleView: View {
    
    @ObservedObject var viewModel = PersonViewModel()
    // instances when you should use @StateObject?
    // ObservedObject caused crashes??
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                ForEach(viewModel.people) { person in
                    HStack {
                        Text(person.name)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Text(person.email)
                            Text(person.phoneNumber)
                        }
                    }
                    .padding()
                    .font(.title3)
                }
            }
            Menu("Menu".uppercased()) {
                Button("Reverse", action: { viewModel.reverseOrder() })
                Button("Shuffle", action: { viewModel.shuffleOrder() })
                Button("Remove Last", action: { viewModel.removeLastPerson() })
                Button("Remove First", action: { viewModel.removeFirstPerson() })
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
