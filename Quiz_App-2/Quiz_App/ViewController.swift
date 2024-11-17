//
//  ViewController.swift
//  Quiz_App
//
//  Created by Meet Patel on 08/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startQuizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundImage()

    }
    
    func setBackgroundImage() {
        
           // Create an UIImageView for the background
           let backgroundImageView = UIImageView()
           backgroundImageView.image = UIImage(named: "backgroundImage") // replace with the actual name of your image in Assets.xcassets
           backgroundImageView.contentMode = .scaleAspectFill
           backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
           
           view.addSubview(backgroundImageView)
           
           NSLayoutConstraint.activate([
               backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
               backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
               backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
               backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
           ])
        
       
           view.sendSubviewToBack(backgroundImageView)
       }
       
   

    @IBAction func startQuizButtonTapped(_ sender: Any) {
        
        print("Start Quiz Button Pressed")  // Debug print statement
           
           if QuizManager.shared.questions.isEmpty {
               let alertController = UIAlertController(
                   title: "No Questions",
                   message: "There are no questions in your question bank. Please add questions before starting the quiz.",
                   preferredStyle: .alert
               )
               alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
               present(alertController, animated: true, completion: nil)
           } else {
               performSegue(withIdentifier: "startQuizSegue", sender: self)
           }

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startQuizSegue" && segue.destination is InitiateQuizViewController {
        }
    }

    }

