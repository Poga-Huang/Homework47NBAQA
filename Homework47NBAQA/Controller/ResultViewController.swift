//
//  ResultViewController.swift
//  Homework47NBAQA
//
//  Created by 黃柏嘉 on 2021/12/29.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    var finalScore:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //畫面讀入就秀出結果
        showResult()
    }
    
    func showResult(){
        if let finalScore = finalScore {
            scoreLabel.text = "\(finalScore)"
            switch finalScore{
            case 0..<60:
                resultLabel.text = "你還太淺了...\n快回家多看比賽吧"
            case 60..<80:
                resultLabel.text = "還行還行！\n平常看球挺認真的喔"
            case 80..<100:
                resultLabel.text = "不錯不錯！\n請容我叫一聲資深球迷"
            case 100:
                resultLabel.text = "如果喬丹是籃球之神\n你一定是球迷之神～"
            default:
                return
            }
        }
    }
   

}
