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

    override func viewDidLoad() {
        super.viewDidLoad()
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
        print(repository)
    }
}

