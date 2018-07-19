//
//  EndViewController.swift
//  theEndOfTheWorld
//
//  Created by 林哲右 on 2018/7/18.
//  Copyright © 2018年 UISlideAndUITextField. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var endDateLabel: UILabel!
    @IBOutlet weak var nowDateLabel: UILabel!
    @IBOutlet weak var nowToEndLabel: UILabel!
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let formatter  = DateFormatter()
        formatter.dateFormat = "yyyy MM dd hh:ss"
        
        let now = Date()
        let nowToEnd = Int(sender.date.timeIntervalSince(now))
        let seconds :Int = nowToEnd % 60
        let min :Int = (nowToEnd / 60 ) % 60
        let hours :Int = ( nowToEnd / 3600 ) % 24
        let day :Int = nowToEnd / 86400
        
        endDateLabel.text = formatter.string(from: sender.date)
        nowDateLabel.text = formatter.string(from: now)
        nowToEndLabel.text = "\(day)天\(hours)小時\(min)分\(seconds)秒"
        
    }
    
}
