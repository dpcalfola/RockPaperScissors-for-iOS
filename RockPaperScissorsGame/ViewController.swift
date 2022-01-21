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


	@IBOutlet weak var mainLabelView: UILabel!


	@IBOutlet weak var comImageView: UIImageView!
	@IBOutlet weak var userImageView: UIImageView!

	@IBOutlet weak var comLabelView: UILabel!
	@IBOutlet weak var userLabelView: UILabel!

	@IBOutlet weak var userChoiceButtonRockView: UIButton!
	@IBOutlet weak var userChoiceButtonPaperView: UIButton!
	@IBOutlet weak var userChoiceButtonScissorsView: UIButton!
	@IBOutlet weak var selectButtonView: UIButton!


	override func viewDidLoad() {
		super.viewDidLoad()

		setReadySituation()



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
		// activate when userChoiceButtonTapped
		selectButtonView.isEnabled = true
	}// userChoiceButtonTapped


	@IBAction func resetButtonTapped(_ sender: UIButton) {
		setReadySituation()

		// activate choice buttons
		userChoiceButtonRockView.isEnabled = true
		userChoiceButtonPaperView.isEnabled = true
		userChoiceButtonScissorsView.isEnabled = true
		// inactivate select button
		selectButtonView.isEnabled = false

		// test print
		print("reset")
	}// resetButtonTapped



	@IBAction func selectButtonTapped(_ sender: UIButton) {

		// inactivated when userChoiceButton is not chosen

		// set Labels
		comLabelView.text = getChoiceString(choice: comChoice)
		userLabelView.text = getChoiceString(choice: userChoice)
		// set images
		comImageView.image = getChoiceImage(choice: comChoice)
		userImageView.image = getChoiceImage(choice: userChoice)

		// run game
		showDownLogic()

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
		mainLabelView.text = "Your Choice?"


		// reset compuer choice
		setComChoice()
	}

	func setComChoice() {
		guard let rpsRandom = Rps(rawValue: Int.random(in: 0...2)) else { return }
		comChoice = rpsRandom
		print("comChoice:", comChoice)
	}

	func getChoiceString(choice: Rps) -> String {
		switch choice {
			case .Rock:
				return "ROCK"
			case .Paper:
				return "PAPER"
			case .Scissors:
				return "SCISSORS"

		}
	}

	func getChoiceImage(choice: Rps) -> UIImage {
		switch choice {
			case .Rock:
				return #imageLiteral(resourceName: "rock")
			case .Paper:
				return #imageLiteral(resourceName: "paper")
			case .Scissors:
				return #imageLiteral(resourceName: "scissors")
		}
	}


	func showDownLogic() {

		// show result
		if  userChoice == comChoice {
			mainLabelView.text = "Tie Game"
		}else if
			(userChoice == .Rock && comChoice == .Scissors) ||
			(userChoice == .Paper && comChoice == .Rock) ||
			(userChoice == .Scissors && comChoice == .Paper) {
			mainLabelView.text = "You Win"
		}else {
			mainLabelView.text = "You Lose"
		}

		// inactivate buttons without ResetButton
		userChoiceButtonRockView.isEnabled = false
		userChoiceButtonPaperView.isEnabled = false
		userChoiceButtonScissorsView.isEnabled = false
		selectButtonView.isEnabled = false


	}//showDownLogic

}


