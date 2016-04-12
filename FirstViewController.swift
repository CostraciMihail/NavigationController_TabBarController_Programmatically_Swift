//
//  FirstViewController.swift
//  Navigtion_TabBar_Progammatically
//
//  Created by winify on 4/11/16.
//  Copyright © 2016 Costraci Mihail. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController {

	
	@IBOutlet weak var buttonM: UIButton!
	var tabBarContr: UITabBarController = UITabBarController()

	
	required init?(coder aDecoder: NSCoder) {
		
		
		let mainSb = UIStoryboard(name: "Main", bundle: nil)
		
		let secondVC = mainSb.instantiateViewControllerWithIdentifier("SecondViewControllerID")
		let thirdVC = mainSb.instantiateViewControllerWithIdentifier("ThirdViewControllerID")
		let fourthVC = mainSb.instantiateViewControllerWithIdentifier("FourthViewControllerID")

		super.init(coder: aDecoder)
		tabBarContr.viewControllers = [secondVC, thirdVC, fourthVC]
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}


	@IBAction func buttonOne(sender: AnyObject) {

		appDelegate.nvc?.pushViewController(tabBarContr, animated: true)
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

