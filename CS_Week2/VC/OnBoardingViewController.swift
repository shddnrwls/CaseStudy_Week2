//
//  ViewController.swift
//  CS_Week2
//
//  Created by 노욱진 on 2022/07/09.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var detailButton: UIButton!
    override func viewWillAppear(_ animated: Bool) {
        detailButton.layer.masksToBounds = true
        detailButton.layer.cornerRadius = 10
        if UserDefaults.standard.bool(forKey: "neverExit") == true{
            let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController")
            homeVC?.modalPresentationStyle = .fullScreen
            self.present(homeVC!, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func exitButton(_ sender: UIButton) {
        UserDefaults.standard.set(false, forKey: "neverExit")
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController")
        homeVC?.modalPresentationStyle = .fullScreen
        self.present(homeVC!, animated: true, completion: nil)
    }
    @IBAction func neverExitButton(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: "neverExit")
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController")
        homeVC?.modalPresentationStyle = .fullScreen
        self.present(homeVC!, animated: true, completion: nil)
        
    }
}

