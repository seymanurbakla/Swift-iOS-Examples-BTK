//
//  ViewController.swift
//  Sayaclar
//
//  Created by Şeyma Nur Bakla on 7.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var timer = Timer()
    var kalanZaman = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        kalanZaman = 15
        
        //label.text = "Zaman : \(kalanZaman)"
        
        
    }

    @IBAction func baslataTiklandi(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:  #selector(timerFonksiyonu), userInfo:  nil, repeats: true)
    }
    
    @objc func timerFonksiyonu(){
       
        label.text = "Zaman : \(kalanZaman)"
      kalanZaman -= 1
        
        if kalanZaman == 0 {
            label.text = "Süre Bitti"
            timer.invalidate()
        }
        
    }
    
}

