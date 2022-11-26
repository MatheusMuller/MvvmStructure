//
//  ContentView.swift
//  Mvvm Structure
//
//  Created by Matheus Müller on 26/11/22.
//

import SwiftUI

struct PeopleView: View {
    @ObservedObject var viewModel = PersonViewModel()
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                ForEach(viewModel.people) { person in
                    HStack {
                        Text(person.name)
                            .font(.title)
                            .fontWeight(.black)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Text(person.email)
                            Text(person.phoneNumber)
                        }
                    }
                    .frame(height: 80)
                    .padding(12)
                }
            }
            Menu("Actions".uppercased()) {
                Button("Reverse", action: { viewModel.reverseOrder() })
                Button("Shuffle", action: { viewModel.shuffleOrder() })
                Button("Remove Last", action: { viewModel.removeLast() })
                Button("Remove First", action: { viewModel.removeFirst() })
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
