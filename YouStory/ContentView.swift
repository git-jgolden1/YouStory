//
//  ContentView.swift
//  YouStory
//
//  Created by Jonathan Gurr on 7/12/22.
//

import SwiftUI

struct ContentView: View {
	let exampleCard = Card(message: "You have just left Portland, and are ready to begin your exodus to a better place.", buttonMessages: ["Alpha", "Beta", "Gamma", "Delta", "Epsilon", "Zeta"])
	
	var numberOfButtons: Int {
		exampleCard.buttonMessages.count
	}
	
	let buttonColorScheme: [Color] = [.red, .blue, .green, .yellow, .orange, .purple]
	
	var body: some View {
		Text(exampleCard.message)
			.font(.headline)
			.frame(height: 100, alignment: .center)
		Spacer()
		VStack {
			ForEach(0..<numberOfButtons, id: \.self) { i in
				ZStack {
					Rectangle()
						.brightness(0.3)
					Text(exampleCard.buttonMessages[i])
					.foregroundColor(.black)
				}
				.frame(maxWidth: .infinity)
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
