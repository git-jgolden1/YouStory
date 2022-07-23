//
//  ContentView.swift
//  YouStory
//
//  Created by Jonathan Gurr on 7/12/22.
//

import SwiftUI

struct ContentView: View {
	let exampleCard = Card(message: "This is an example card", buttonMessages: ["Alpha", "Beta", "Gamma", "Delta", "Epsilon", "Zeta"])
	
	var numberOfButtons: Int {
		exampleCard.buttonMessages.count
	}
	
	let buttonColorScheme: [Color] = [.red, .blue, .green, .yellow, .orange, .purple]
	
	var body: some View {
		Text("Example message")
			.font(.largeTitle)
		Spacer()
		LazyVGrid(columns: [GridItem(), GridItem()]) {
			ForEach(0..<numberOfButtons, id: \.self) { i in
				ZStack {
					Circle()
					Text(exampleCard.buttonMessages[i])
					.foregroundColor(.black)
				}
				.frame(width: 125, height: 125)
				.foregroundColor(buttonColorScheme[i])
				.onTapGesture() {
					print("button \(i + 1)")
				}
			}
		}
		Spacer()
	}
}


























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
