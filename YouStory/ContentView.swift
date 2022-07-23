//
//  ContentView.swift
//  YouStory
//
//  Created by Jonathan Gurr on 7/12/22.
//

import SwiftUI

struct ContentView: View {
	@State private var numberOfButtons = 6
	let buttonColorScheme: [Color] = [.red, .blue, .green, .yellow, .orange, .purple]
	
	
	var body: some View {
		Text("Example message")
			.font(.largeTitle)
		Spacer()
		LazyVGrid(columns: [GridItem(), GridItem()]) {
			ForEach(0..<numberOfButtons) { i in
				ZStack {
					Circle()
						.frame(width: 125, height: 125)
					Button("B\(i + 1)") {
						print("Button \(i + 1)")
					}
				}
				.foregroundColor(buttonColorScheme[i])
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
