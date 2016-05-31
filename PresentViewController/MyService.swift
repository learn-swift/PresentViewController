//
//  MyService.swift
//  PresentViewController
//
//  Created by Duc Nguyen on 5/31/16.
//  Copyright © 2016 Duc Nguyen. All rights reserved.
//

import Foundation

var data = ["Hoa", "Hau"]

class MyService {
	static let shared = MyService()
	
	func getAll() -> [String] {
		return data
	}
	func save(value: String?) -> Bool {
		data.append(value!)
		return true
	}
}