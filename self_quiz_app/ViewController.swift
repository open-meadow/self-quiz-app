//
//  ViewController.swift
//  self_quiz_app
//
//  Created by open-meadow on 2025-09-21.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        imageView.image = UIImage(named:"img01")!
    }
    
    var currentQuestionIndex = 0
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var button: UIButton!
    @IBOutlet var imageView: UIImageView!
    
    let questions: [String] = [
        "What is 10 + 10?",
        "What is the capital of Ontario?",
        "What is wine made from?",
        "What is the study of human behaviour called?",
        "What is the capital of South Korea?",
    ]
    let answers: [String] = [
        "20",
        "Toronto",
        "Grapes",
        "Psychology",
        "Seoul"
    ]
    @IBOutlet var images: [UIImage] = [
        UIImage(named:"img01")!,
        UIImage(named:"img02")!,
        UIImage(named:"img03")!,
        UIImage(named:"img04")!,
        UIImage(named:"img05")!,
    ]
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        imageView.image = images[currentQuestionIndex]
    }
    
    @IBAction func showPrevQuestion(_ sender: UIButton) {
        currentQuestionIndex -= 1
        if currentQuestionIndex < 0 {
            currentQuestionIndex = questions.count - 1
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        var answer: String = answerLabel.text!
            
        if (answer == "???") {
            answer = answers[currentQuestionIndex]
            answerLabel.text = answer
            button.titleLabel!.text = "Hide Answer"
        } else {
            answer = "???"
            answerLabel.text = answer
            button.titleLabel!.text = "Show Answer"
        }
    }
    
    @IBAction func hideAnswer(_ sender: UIButton) {
        answerLabel.text = "???"
        button.titleLabel!.text = "Show Answer"
    }

}

