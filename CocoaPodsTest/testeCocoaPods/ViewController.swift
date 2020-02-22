//
//  ViewController.swift
//  testeCocoaPods
//
//  Created by Murilo Teixeira on 18/07/19.
//  Copyright © 2019 Murilo Teixeira. All rights reserved.
//

import UIKit
import ButtonProgressBar_iOS

class ViewController: UIViewController {

    var progressButton = ButtonProgressBar()
    var progressButton2 = ButtonProgressBar()
    var buttonTapped = false
    var buttonTapped2 = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressButton = ButtonProgressBar(frame: CGRect(x: 0, y: 0, width: 350, height: 50))
        view.addSubview(progressButton)
        progressButton.center = view.center
        
        progressButton.addTarget(nil, action: #selector(self.tapped), for: .touchUpInside)
        progressButton.setTitle("Toque para ver a animação", for: .normal)
        
        progressButton2 = ButtonProgressBar(frame: CGRect(x: 0, y: 0, width: 350, height: 50))
        view.addSubview(progressButton2)
        progressButton2.center = view.center
        progressButton2.center.y += 60
        
        progressButton2.addTarget(nil, action: #selector(self.tapped2), for: .touchUpInside)
        progressButton2.setTitle("Toque para ver a animação", for: .normal)
    }

    
    @objc func tapped(){
        if buttonTapped {
            progressButton.stopIndeterminate()
            progressButton.setTitle("Toque para ver a animação", for: .normal)
        } else {
            progressButton.startIndeterminate()
            progressButton.setTitle("Toque para parar a animação", for: .normal)
        }
        buttonTapped = !buttonTapped
    }
    
    @objc func tapped2(){
        if buttonTapped2 {
            progressButton2.setProgress(progress: 0.5, true)
            progressButton2.setTitle("Toque para ver a animação", for: .normal)
        } else {
            progressButton2.resetProgress()
            progressButton2.setTitle("Toque para parar a animação", for: .normal)
        }
        buttonTapped2 = !buttonTapped2
    }
}

