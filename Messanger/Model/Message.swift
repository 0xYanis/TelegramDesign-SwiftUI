//
//  Message.swift
//  Messanger
//
//  Created by User on 28.12.2022.
//

import Foundation
import SwiftUI

struct Message: Identifiable {
	let id = UUID().uuidString
	let fromImage: String
	let groupName: String?
	let fromName: String
	let lastMessage: String
	let seen: Bool
	let time: String
	let count: Int
	
	init(fromImage: String, groupName: String? = nil, fromName: String, lastMessage: String, seen: Bool, time: String, count: Int = 0) {
		self.fromImage = fromImage
		self.groupName = groupName
		self.fromName = fromName
		self.lastMessage = lastMessage
		self.seen = seen
		self.time = time
		self.count = count
	}
}

let messages = [
	Message(fromImage: "avatar", fromName: "Jovani Gorgo", lastMessage: "Hey man, how are u? I just...", seen: false, time: "6:49 PM", count: 2),
	Message(fromImage: "avatar1", groupName: "FICT ITMO", fromName: "Dekan Facility", lastMessage: "Reminder: ITMO sponsored...", seen: true, time: "6:49 PM"),
	Message(fromImage: "avatar2", fromName: "Real G", lastMessage: "Check this 🤣", seen: false, time: "12:27 PM", count: 1),
	Message(fromImage: "avatar3", fromName: "Max", lastMessage: "OMG! U dont beleave that.", seen: true, time: "7:02 AM"),
	Message(fromImage: "avatar4", fromName: "ConorMac", lastMessage: "Tell her tonight. And let me know.", seen: true, time: "3:44 AM"),
	Message(fromImage: "avatar5", fromName: "Sussy Baka", lastMessage: "Sent an image of Pepsi", seen: false, time: "12:30 AM")
]
