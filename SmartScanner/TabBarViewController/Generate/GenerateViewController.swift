//
//  GenerateViewController.swift
//  SmartScanner
//
//  Created by Pawan Dhull on 03/02/21.
//

import UIKit

class GenerateViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func emailBtnAction(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let VC = storyBoard.instantiateViewController(withIdentifier: "GeneratorEmailQRVC") as! GeneratorEmailQRVC
        self.present(VC, animated:true, completion:nil)

    }
    
    @IBAction func contactBtnAction(_ sender: Any) {
    
    }
    
    @IBAction func phoneBtnAction(_ sender: Any) {
        
    }
    
    @IBAction func webSiteURLBtnAction(_ sender: Any) {
        
    }
    
    @IBAction func messageBtnAction(_ sender: Any) {
        
    }
    
}
