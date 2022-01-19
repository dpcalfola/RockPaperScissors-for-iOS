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

		setReadySituation()


		// Do any additional setup after loading the view.

	}//viewDidLoad


	@IBAction func userChoiceButtonTapped(_ sender: UIButton) {
		if sender.currentTitle == "Rock"{
			userLabelView.text = "ROCK"
		}else if sender.currentTitle == "Paper"{
			userLabelView.text = "PAPER"
		}else if sender.currentTitle == "Scissors"{
			userLabelView.text = "SCISSORS"
		}
		print("user")
	}

	@IBAction func resetButtonTapped(_ sender: UIButton) {
		setReadySituation()
		print("reset")
	}

	@IBAction func selectButtonTapped(_ sender: UIButton) {
		print("select")
	}




	// func area

	func setReadySituation(){
		comImageView.image = #imageLiteral(resourceName: "readyLeft")
		userImageView.image = #imageLiteral(resourceName: "readyRight")
		comLabelView.text = "Ready"
		userLabelView.text = "Ready"
	}
}

