//
//  CardChainDB.swift
//  YouStory
//
//  Created by Jonathan Gurr on 7/22/22.
//

import Foundation

let cc1 = CardChain(cards: [
	Card(message: "Welcome to the beginning of the game!", buttonPortals: [("Alpha", 1), ("Beta", 2)]),
	Card(message: "Welcome to Alpha!", buttonPortals: [("Done", 0)]),
	Card(message: "Welcome to Beta!", buttonPortals: [("Done", 0)])
])
