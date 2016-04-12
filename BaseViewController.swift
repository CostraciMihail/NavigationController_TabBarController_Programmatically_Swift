//
//  BaseViewController.swift
//  Navigtion_TabBar_Progammatically
//
//  Created by winify on 4/11/16.
//  Copyright © 2016 Costraci Mihail. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
	
	var firstVC: UIViewController!
	var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
	var mainSb: UIStoryboard = UIStoryboard()

	@IBOutlet weak var button: UIButton!
	
	required init?(coder aDecoder: NSCoder) {

		super.init(coder: aDecoder)
		self.mainSb = UIStoryboard(name: "Main", bundle: nil)

	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		firstVC = mainSb.instantiateViewControllerWithIdentifier("FirstViewControllerID")
	}
	
	
	@IBAction func buttonPressed(sender: AnyObject) {

		self.appDelegate.nvc!.pushViewController(self.firstVC, animated: true)

	}
	override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	
	
	
}
