//
//  Question.swift
//  Homework47NBAQA
//
//  Created by 黃柏嘉 on 2021/12/29.
//

import Foundation

class TextQuestionData{
    var knowledgeQuestion = [
        Question(question: "NBA一場比賽打幾節？", questionImageName: nil, options: ["3節","4節","5節","2節"], answer: "4節"),
        Question(question: "NBA一節打幾分鐘？", questionImageName: nil, options: ["8分鐘","10分鐘","12分鐘","20分鐘"], answer: "12分鐘"),
        Question(question: "NBA的弧頂三分線距離？", questionImageName: nil, options: ["7.25米","7米","6.25米","6.5米"], answer: "7.25米"),
        Question(question: "NBA的底線三分線距離？", questionImageName: nil, options: ["6.5米","6.8米","6.7米","6.6米"], answer: "6.7米"),
        Question(question: "延長賽一節幾分鐘？", questionImageName: nil, options: ["5分鐘","10分鐘","12分鐘","8分鐘"], answer: "5分鐘"),
        Question(question: "幾次犯規代表犯滿離場？", questionImageName: nil, options:["4犯","5犯","6犯","無限制"], answer: "6犯"),
        Question(question: "目前一共有幾隊？", questionImageName: nil, options: ["26隊","28隊","30隊","32隊"], answer: "30隊"),
        Question(question: "每個進攻回合可以有幾秒？", questionImageName: nil, options: ["24秒","30秒","32秒","25秒"], answer: "24秒"),
        Question(question: "NBA是與以前哪個聯盟合併而成的？", questionImageName: nil, options:["ABC","SBL","CBA","ABA"], answer: "ABA"),
        Question(question: "目前的NBA三分王Curry是以幾顆成功超車的？", questionImageName: nil, options: ["2971顆","2972顆","2973顆","2974顆"], answer: "2974顆"),
        Question(question: "誰是NBA歷史上目前唯一一個輸球的FMVP？", questionImageName: nil, options: ["Kobe Bryant","LeBron James","Jerry West","Wilt Chamberlain"], answer: "Jerry West"),
        Question(question: "Michael Jordan生涯一共幾球沒進？", questionImageName: nil, options: ["12345顆","12344顆","12343顆","12346顆"], answer:"12345顆"),
        Question(question: "下列哪支NBA球隊有吉祥物？", questionImageName: nil, options: ["湖人","尼克","勇士","熱火"], answer: "熱火"),
        Question(question: "NBA目前沒有哪個球員綽號？", questionImageName: nil, options: ["禿曼巴","黑曼巴","黃曼巴","大曼巴"], answer: "大曼巴"),
        Question(question: "下列哪個城市球隊組合錯誤？", questionImageName: nil, options: ["邁阿密熱火","洛杉磯騎士","奧蘭多魔術","明尼蘇達灰狼"], answer: "洛杉磯騎士"),
        Question(question: "NBA單場最高分是多少？", questionImageName: nil, options: ["81分","100分","92分","102分"], answer: "100分"),
        Question(question: "NBA單季例行賽最多勝的球隊?", questionImageName: nil, options: ["公牛","湖人","賽爾提克","勇士"], answer:"勇士"),
        Question(question: "NBA正常單季例行賽幾場？", questionImageName: nil, options: ["72場","82場","80場","76場"], answer: "82場"),
        Question(question: "NBA歷史上最高球員？", questionImageName: nil, options: ["Gheorghe Muresan","姚明","Shawn Bradley","Chuck Nevitt"], answer: "Gheorghe Muresan"),
        Question(question: "NBA歷史上最矮球員？", questionImageName: nil, options: ["Isaiah Thomas","Spud Webb","Earl Boykins","Muggsy Bogues"], answer: "Muggsy Bogues"),
        Question(question: "35秒得了13分的球員？", questionImageName: nil, options:["Kobe Bryant","Michael Jordan","Tracy McGrady","Allen Iverson"], answer: "Tracy McGrady"),
        Question(question: "NBA歷史上三分球大賽最差成績球員？", questionImageName: nil, options: ["Michael Jordan","Ray Allen","Klay Thompson","Kyle Korver"], answer: "Michael Jordan"),
        Question(question: "NBA目前唯一一支非美國境內球隊是？", questionImageName: nil, options: ["暴龍隊","金塊隊","公鹿隊","七六人"], answer: "暴龍隊"),
        Question(question: "下列哪個城市目前沒有NBA球隊？", questionImageName: nil, options: ["西雅圖","曼菲斯","丹佛","布魯克林"], answer: "西雅圖"),
        Question(question: "目前例行賽單節最高得分？", questionImageName: nil, options: ["33分","37分","35分","30分"], answer: "37分"),
        Question(question: "下列哪支球隊不屬於東區", questionImageName: nil, options: ["國王隊","魔術隊","籃網隊","巫師隊"], answer: "國王隊"),
        Question(question: "下列哪支球隊不屬於西區", questionImageName: nil, options: ["雷霆隊","火箭隊","獨行俠隊","活塞隊"], answer: "活塞隊"),
        Question(question: "NBA的Logo被大家認為是哪個球員？", questionImageName: nil, options: ["Michael Jordan","LeBron James","Jerry West","Julius Erving"], answer: "Jerry West"),
        Question(question: "NBA哪支球隊曾出現過同隊有三名球員同年同月同日生？", questionImageName: nil, options: ["獨行俠隊","湖人隊","灰狼隊","籃網隊"], answer: "獨行俠隊"),
        Question(question: "NBA歷史大三元次數最多的球員是？", questionImageName: nil, options: ["Russell Westbrook","LeBron James","Magic Johnson","Oscar Robertson"], answer: "Russell Westbrook")
    ]
    var homeCourtQuestion = [
        Question(question: "波士頓賽爾提克主場名稱？", questionImageName: nil, options: ["TD Garden","Barclays Center","Madison Square Garden","Wells Fargo Center"], answer: "TD Garden"),
        Question(question: "布魯克林籃網主場名稱？", questionImageName: nil, options: ["Barclays Center","Madison Square Garden","Wells Fargo Center","Scotiabank Arena"], answer: "Barclays Center"),
        Question(question: "紐約尼克主場", questionImageName: nil, options: ["Madison Square Garden","Wells Fargo Center","Scotiabank Arena","United Center"], answer: "Madison Square Garden"),
        Question(question: "費城七六人主場名稱？", questionImageName: nil, options: ["Wells Fargo Center","Scotiabank Arena","United Center","Quicken Loans Arena"], answer: "Wells Fargo Center"),
        Question(question: "多倫多暴龍主場名稱？", questionImageName: nil, options: ["Scotiabank Arena","United Center","Quicken Loans Arena","Little Caesars Arena"], answer: "Scotiabank Arena"),
        Question(question: "芝加哥公牛主場名稱？", questionImageName:nil, options: ["United Center","Quicken Loans Arena","Little Caesars Arena","Bankers Life Fieldhouse"], answer:"United Center"),
        Question(question: "克里夫蘭騎士主場名稱？", questionImageName: nil, options: ["Quicken Loans Arena","Little Caesars Arena","Bankers Life Fieldhouse","Fiserv Forum"], answer: "Quicken Loans Arena"),
        Question(question: "底特律活塞主場名稱？", questionImageName: nil, options: ["Little Caesars Arena","Bankers Life Fieldhouse","Fiserv Forum","State Farm Arena"], answer: "Little Caesars Arena"),
        Question(question: "印第安納溜馬主場名稱？", questionImageName: nil, options: ["Bankers Life Fieldhouse","Fiserv Forum","State Farm Arena","Spectrum Center"], answer: "Bankers Life Fieldhouse"),
        Question(question: "密爾瓦基公鹿主場名稱？", questionImageName: nil, options: ["Fiserv Forum","State Farm Arena","Spectrum Center","FTX Arena"], answer: "Fiserv Forum"),
        Question(question: "亞特蘭大老鷹主場名稱？", questionImageName: nil, options: ["State Farm Arena","Spectrum Center","FTX Arena","Amway Center"], answer: "State Farm Arena"),
        Question(question: "夏洛特黃蜂主場名稱？", questionImageName: nil, options: ["Spectrum Center","FTX Arena","Amway Center","Capital One Arena"], answer: "Spectrum Center"),
        Question(question: "邁阿密熱火主場名稱？", questionImageName: nil, options: ["FTX Arena","Amway Center","Capital One Arena","Ball Arena"], answer: "FTX Arena"),
        Question(question: "奧蘭多魔術主場名稱?", questionImageName: nil, options: ["Amway Center","Capital One Arena","Ball Arena","Target Center"], answer: "Amway Center"),
        Question(question: "華盛頓巫師主場名稱？", questionImageName: nil, options: ["Capital One Arena","Ball Arena","Target Center","Chesapeake Energy Arena"], answer: "Capital One Arena"),
        Question(question: "丹佛金塊主場名稱？", questionImageName: nil, options: ["Ball Arena","Target Center","Chesapeake Energy Arena","Moda Center"], answer: "Ball Arena"),
        Question(question: "明尼蘇達灰狼主場名稱？", questionImageName: nil, options: ["Target Center","Chesapeake Energy Arena","Moda Center","Vivint Smart Home Arena"], answer: "Target Center"),
        Question(question: "奧克拉荷馬雷霆主場名稱？", questionImageName: nil, options: ["Chesapeake Energy Arena","Moda Center","Vivint Smart Home Arena","Chase Center"], answer: "Chesapeake Energy Arena"),
        Question(question: "波特蘭拓荒者主場名稱？", questionImageName: nil, options: ["Moda Center","Vivint Smart Home Arena","Chase Center","Crypto.com Arena"], answer: "Moda Center"),
        Question(question: "猶他爵士主場名稱？", questionImageName: nil, options: ["Vivint Smart Home Arena","Chase Center","Crypto.com Arena","Footprint Center"], answer: "Vivint Smart Home Arena"),
        Question(question: "金州勇士主場名稱？", questionImageName: nil, options: ["Chase Center","Crypto.com Arena","Footprint Center","Golden 1 Center"], answer: "Chase Center"),
        Question(question: "洛杉磯湖人主場名稱？", questionImageName: nil, options: ["Crypto.com Arena","Footprint Center","Golden 1 Center","American Airlines Center"], answer: "Crypto.com Arena"),
        Question(question: "洛杉磯快艇主場名稱？", questionImageName: nil, options: ["Crypto.com Arena","Footprint Center","Golden 1 Center","American Airlines Center"], answer: "Crypto.com Arena"),
        Question(question: "鳳凰城太陽主場名稱？", questionImageName: nil, options: ["Footprint Center","Golden 1 Center","American Airlines Center","Toyota Center"], answer: "Footprint Center"),
        Question(question: "沙加緬度國王主場名稱？", questionImageName: nil, options: ["Golden 1 Center","American Airlines Center","Toyota Center","FedExForum"], answer: "Golden 1 Center"),
        Question(question: "達拉斯獨行俠主場名稱？", questionImageName: nil, options: ["American Airlines Center","Toyota Center","FedExForum","Smoothie King Center"], answer: "American Airlines Center"),
        Question(question: "休士頓火箭主場名稱？", questionImageName: nil, options: ["Toyota Center","FedExForum","Smoothie King Center","AT&T Center"], answer: "Toyota Center"),
        Question(question: "曼菲斯灰熊主場名稱？", questionImageName: nil, options: ["FedExForum","Smoothie King Center","AT&T Center","Golden 1 Center"], answer: "FedExForum"),
        Question(question: "紐奧良鵜鶘主場名稱？", questionImageName: nil, options: ["Smoothie King Center","AT&T Center","Crypto.com Arena","Chase Center"], answer: "Smoothie King Center"),
        Question(question: "聖安東尼奧馬刺主場名稱？", questionImageName: nil, options: ["AT&T Center","Moda Center","Target Center","Ball Arena"], answer: "AT&T Center")
    ]
}
