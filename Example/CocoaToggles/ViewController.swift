//
//  ViewController.swift
//  CocoaToggles
//
//  Created by isabellyfd on 10/18/2019.
//  Copyright (c) 2019 isabellyfd. All rights reserved.
//

import UIKit
import CocoaToggles

class ViewController: UIViewController {

    @IBOutlet weak var uberXButton: UIButton!
    @IBOutlet weak var uberSelectButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uberXButton.isHidden = true
        uberSelectButton.isHidden = true
        
        let configuration = CTConfiguration("ilEpbJwuwvbuZTkwbRhslWpdoOr2","KCQNY2baVZ630AbKlTbq")
        
        let toggleManager = CTToggleManager(configuration: configuration)
        toggleManager.delegate = self
        toggleManager.config()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController : CTTogglesDelegate {
    
    func getTogglesFrom(repository: CTRepository) {
        guard let isUberSelectOn = repository.isToggleOn(name: "uber-select") else { return }
        
        if isUberSelectOn {
            self.uberXButton.isHidden = false
            self.uberSelectButton.isHidden = false
        } else {
            self.uberXButton.isHidden = true
        }
    }
}

