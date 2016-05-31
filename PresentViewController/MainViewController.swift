//
//  ViewController.swift
//  PresentViewController
//
//  Created by Duc Nguyen on 5/31/16.
//  Copyright © 2016 Duc Nguyen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
	var data = [""]
	
	@IBOutlet weak var txtDisplay: UITextView!
	override func viewDidLoad() {
		super.viewDidLoad()
		loadData()
	}
	
	func loadData() {
		print("Loading data...")
		data = MyService.shared.getAll()
		let txt = data.reduce("", combine: { $0 + " / " + $1 }) // Hàm này để nối String với nhau
		txtDisplay.text = txt
	}
	
	@IBAction func handleGoToAdd(sender: UIButton?) {
		let storyboard = UIStoryboard(name: "Main", bundle: nil);
		let vc = storyboard.instantiateViewControllerWithIdentifier("AddViewController") as! AddViewController
		vc.delegate = self
		self.presentViewController(vc, animated: true, completion: nil)
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
}

extension MainViewController: AddViewControllerProtocol {
	func addedData() {
		loadData()
		print("Đã load lại dữ liệu")
	}
}