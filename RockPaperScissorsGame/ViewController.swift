//
//  ViewController.swift
//  RockPaperScissorsGame
//
//  Created by Fola Flor on 2022/01/16.
//

import UIKit

class ViewController: UIViewController {



	@IBOutlet weak var comImageView: UIImageView!
	@IBOutlet weak var userImageView: UIImageView!

	@IBOutlet weak var comLabelView: UILabel!
	@IBOutlet weak var userLabelView: UILabel!




	override func viewDidLoad() {
		super.viewDidLoad()

		comImageView.image = #imageLiteral(resourceName: "readyLeft")
		userImageView.image = #imageLiteral(resourceName: "readyRight")
		comLabelView.text = "Ready"
		userLabelView.text = "Ready"



		// Do any additional setup after loading the view.

	}//viewDidLoad


	@IBAction func userChoiceButtonTapped(_ sender: UIButton) {
		print("user")
	}

	@IBAction func resetButtonTapped(_ sender: UIButton) {
		print("reset")
	}

	@IBAction func selectButtonTapped(_ sender: UIButton) {
		print("select")
	}


}

