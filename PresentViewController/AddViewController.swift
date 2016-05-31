//
//  AddViewController.swift
//  PresentViewController
//
//  Created by Duc Nguyen on 5/31/16.
//  Copyright © 2016 Duc Nguyen. All rights reserved.
//

import UIKit

protocol AddViewControllerProtocol {
	func addedData()
}

class AddViewController: UIViewController {
	var delegate: AddViewControllerProtocol?
	
	@IBOutlet weak var txtInput: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	@IBAction func handleSaveAction(sender: AnyObject) {
		MyService.shared.save(txtInput.text)
		delegate?.addedData()
		self.dismissViewControllerAnimated(true, completion: nil)
	}
}
