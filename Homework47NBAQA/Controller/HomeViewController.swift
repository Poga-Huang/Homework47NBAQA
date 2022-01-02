//
//  HomeViewController.swift
//  Homework47NBAQA
//
//  Created by 黃柏嘉 on 2021/12/28.
//

import UIKit

enum GameMode{
    case knowledge
    case player
    case homeCourt
}

class HomeViewController: UIViewController {

    @IBOutlet weak var gifImageView: UIImageView?
    @IBOutlet weak var backView: UIView?
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var optionButtonView: UIView!
    
    let textQuestion = TextQuestionData()
    let imageQuestion = ImageQuestionData()
    var tenQuestions = [Question]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       gifAnimation()
       
    }
    //執行gif圖片
    func gifAnimation(){
        guard let data = NSDataAsset(name: "gif")?.data else{return}
        let cfdata = data as CFData
        CGAnimateImageDataWithBlock(cfdata, nil) { _, cgImage, _ in
            self.gifImageView?.image = UIImage(cgImage: cgImage)
            DispatchQueue.main.asyncAfter(deadline: .now()+5) {
                self.viewAnimation()
            }
        }
    }
    //View的移動動畫
    func viewAnimation(){
        let animation = UIViewPropertyAnimator(duration: 1, curve:.easeInOut) {
            self.redView.frame.origin.x = 0
            self.blueView.frame.origin.x = 207
            self.optionButtonView.frame.origin.y = 361
        }
        animation.addCompletion { completion in
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                self.gifImageView?.removeFromSuperview()
                self.backView?.removeFromSuperview()
            }
        }
        animation.startAnimation()
    }
    
    //uwind Segue
    @IBAction func unwindToHomeViewController(_ unwindSegue: UIStoryboardSegue) {
    }
    
    //IBSegueAction
    //傳遞資料，先將題目隨機打散再傳送過去
    @IBSegueAction func passKnowledgeQuestion(_ coder: NSCoder) -> TextQuestionViewController? {
        
        makeTenQuestions(mode: .knowledge)
        let controller = TextQuestionViewController(coder: coder)
        controller?.textQuestion = tenQuestions
        tenQuestions.removeAll()
        return controller
        
    }
    @IBSegueAction func passHomeCourtQuestion(_ coder: NSCoder) -> TextQuestionViewController? {
        
        makeTenQuestions(mode: .homeCourt)
        let controller = TextQuestionViewController(coder: coder)
        controller?.textQuestion = tenQuestions
        tenQuestions.removeAll()
        return controller
        
    }
    @IBSegueAction func passPlayerQuestion(_ coder: NSCoder) -> ImageQuestionViewController? {
        
        makeTenQuestions(mode: .player)
        let controller = ImageQuestionViewController(coder: coder)
        controller?.imageQuestion = tenQuestions
        tenQuestions.removeAll()
        return controller
        
    }
    //裝十個問題
    func makeTenQuestions(mode:GameMode){
        switch mode {
        case .knowledge:
            textQuestion.knowledgeQuestion.shuffle()
            for question in 0...9{
                tenQuestions.append(textQuestion.knowledgeQuestion[question])
            }
        case .player:
            imageQuestion.playerQuestion.shuffle()
            for question in 0...9{
                tenQuestions.append(imageQuestion.playerQuestion[question])
            }
        case .homeCourt:
            textQuestion.homeCourtQuestion.shuffle()
            for question in 0...9{
                tenQuestions.append(textQuestion.homeCourtQuestion[question])
            }
        }
    }
    
}
