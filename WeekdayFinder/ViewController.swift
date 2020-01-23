//
//  ViewController.swift
//  WeekdayFinder
//
//  Created by user on 16/01/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateTF : UITextField!
    @IBOutlet weak var monthTF : UITextField!
    @IBOutlet weak var yearTF : UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findWeekDay() {
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        
//        ToDo добавить проверку данных ввода
        
//        if let date = dateTF.text, let month = monthTF.text, let year = yearTF.text {
//
//        } else {
//            return
//        }
        
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let dateFormater = DateFormatter()
        dateFormater.locale = Locale(identifier: "ru_Ru")
        dateFormater.dateFormat = "EEEE"
        
        let weekday = dateFormater.string(from: date)
        let capitalizedWeekday = weekday.capitalized
        
        resultLabel.text = capitalizedWeekday
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

