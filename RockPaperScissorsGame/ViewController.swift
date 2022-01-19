//
//  ViewController.swift
//  RockPaperScissorsGame
//
//  Created by Fola Flor on 2022/01/16.
//

import UIKit

class ViewController: UIViewController {

	var comChoice: Rps = Rps.Rock



	@IBOutlet weak var comImageView: UIImageView!
	@IBOutlet weak var userImageView: UIImageView!

	@IBOutlet weak var comLabelView: UILabel!
	@IBOutlet weak var userLabelView: UILabel!




	override func viewDidLoad() {
		super.viewDidLoad()

		setReadySituation()
		setComChoice()


		// Do any additional setup after loading the view.

	}//viewDidLoad


	@IBAction func userChoiceButtonTapped(_ sender: UIButton) {

		guard let title = sender.currentTitle else { return }

		switch title {
			case "Rock":
				userLabelView.text = "ROCK"
			case "Paper":
				userLabelView.text = "PAPER"
			case "Scissors":
				userLabelView.text = "SCISSORS"
			default:
				break
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

	func setComChoice() {
		guard let rpsRandom = Rps(rawValue: Int.random(in: 0...2)) else { return }
		comChoice = rpsRandom
		print("comChoice:", comChoice)
	}
}

