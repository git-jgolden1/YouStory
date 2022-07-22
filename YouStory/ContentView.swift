//
//  ContentView.swift
//  YouStory
//
//  Created by Jonathan Gurr on 7/12/22.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		Text("There is a world of possibilities awaiting you!")
			.multilineTextAlignment(.center)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
