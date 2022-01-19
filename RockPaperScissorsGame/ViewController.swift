//
//  ViewController.swift
//  RockPaperScissorsGame
//
//  Created by Fola Flor on 2022/01/16.
//

import UIKit

class ViewController: UIViewController {

	var comChoice: Rps = Rps.Rock
	var userChoice: Rps = Rps.Rock


	@IBOutlet weak var comImageView: UIImageView!
	@IBOutlet weak var userImageView: UIImageView!

	@IBOutlet weak var comLabelView: UILabel!
	@IBOutlet weak var userLabelView: UILabel!


	@IBOutlet weak var userChoiceButtonRockView: UIButton!
	@IBOutlet weak var userChoiceButtonPaperView: UIButton!
	@IBOutlet weak var userChoiceButtonScissorsView: UIButton!



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
				setReadySituation()
				userChoiceButtonRockView.backgroundColor = #colorLiteral(red: 1, green: 0.6376401186, blue: 0.6469278336, alpha: 1)
				userChoice = Rps.Rock
			case "Paper":
				setReadySituation()
				userChoiceButtonPaperView.backgroundColor = #colorLiteral(red: 1, green: 0.6376401186, blue: 0.6469278336, alpha: 1)
				userChoice = Rps.Paper
			case "Scissors":
				setReadySituation()
				userChoiceButtonScissorsView.backgroundColor = #colorLiteral(red: 1, green: 0.6376401186, blue: 0.6469278336, alpha: 1)
				userChoice = Rps.Scissors
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

		switch comChoice {
			case .Rock:
				comLabelView.text = "ROCK"
			case .Paper:
				comLabelView.text = "PAPER"
			case .Scissors:
				comLabelView.text = "SCISSOR"
		}


		print("select")
	}




	// func area

	func setReadySituation(){
		comImageView.image = #imageLiteral(resourceName: "readyLeft")
		userImageView.image = #imageLiteral(resourceName: "readyRight")
		comLabelView.text = "Ready"
		userLabelView.text = "Ready"
		userChoiceButtonRockView.backgroundColor = #colorLiteral(red: 0.4225857258, green: 0.7771690488, blue: 0.7683463097, alpha: 1)
		userChoiceButtonPaperView.backgroundColor = #colorLiteral(red: 0.4225857258, green: 0.7771690488, blue: 0.7683463097, alpha: 1)
		userChoiceButtonScissorsView.backgroundColor = #colorLiteral(red: 0.4225857258, green: 0.7771690488, blue: 0.7683463097, alpha: 1)

		// reset compuer choice
		setComChoice()
	}

	func setComChoice() {
		guard let rpsRandom = Rps(rawValue: Int.random(in: 0...2)) else { return }
		comChoice = rpsRandom
		print("comChoice:", comChoice)
	}

	func setUserLaber(){
		switch userChoice {
			case .Rock:
				userLabelView.text = "ROCK"
			case .Paper:
				userLabelView.text = "PAPER"
			case .Scissors:
				userLabelView.text = "SCISSOR"
		}




	}

}
