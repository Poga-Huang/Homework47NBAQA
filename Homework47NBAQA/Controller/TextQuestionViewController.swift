//
//  TextQuestionViewController.swift
//  Homework47NBAQA
//
//  Created by 黃柏嘉 on 2021/12/28.
//

import UIKit

class TextQuestionViewController: UIViewController {
    
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var optionsButton: [UIButton]!
    //接受資料
    var textQuestion = [Question]()
    //遊戲
    let game = Game()
    //得分
    var score:Int = 0{
        didSet{
            scoreLabel.text = "\(score)"
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        game.questions = textQuestion
        game.updateQuestion()
        game.updateUI(questionTitle: questionLabel, questoinImage: nil, questionNumber: questionNumberLabel, optionsButton: optionsButton)
    }
    
    @IBAction func dismissSelf(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        var titleString:String?
        var messageString:String?
        if game.checkAnswer(tag: sender.tag) == true{
            score += 10
            titleString = "答對了"
            messageString = "恭喜～好棒棒～"
        }else{
            titleString = "答錯了..."
            messageString = "答案是"+game.answer
        }
        guard game.questionIndex < 9 else{
            alert(title:titleString!, message: messageString!) {
                self.performSegue(withIdentifier:segueIdentifier.textQuestionSegue, sender: nil)
            }
            return
        }
        alert(title: titleString!, message: messageString!) {
            self.game.questionIndex += 1
            self.game.updateUI(questionTitle:self.questionLabel, questoinImage: nil, questionNumber: self.questionNumberLabel, optionsButton: self.optionsButton)
        }
    }
    
    @IBSegueAction func passScore(_ coder: NSCoder) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.finalScore = score
        return controller
    }
    
    
    
}
