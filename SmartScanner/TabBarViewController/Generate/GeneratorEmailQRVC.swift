//
//  GeneratorEmailQRVC.swift
//  SmartScanner
//
//  Created by Pawan Dhull on 06/02/21.
//

import UIKit

import CoreImage

class GeneratorEmailQRVC: UIViewController {

    @IBOutlet weak var emailtxt: UITextField!
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var QRImage: UIImageView!
    
    
    
    let context = CIContext()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addDone()
        
    }
    
    
    
    func addDone() {
        //Add done button to numeric pad keyboard
         let toolbarDone = UIToolbar.init()
         toolbarDone.sizeToFit()
        let barBtnDone =     UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: nameTxt, action: #selector(UITextField.resignFirstResponder))

         toolbarDone.items = [barBtnDone] // You can even add cancel button too
        
        emailtxt.inputAccessoryView = toolbarDone
        nameTxt.inputAccessoryView = toolbarDone
    }
    
    @IBAction func generateAction(_ sender: Any) {
        let email       = self.emailtxt.text
        let CombinedString = "mailto:\(String(describing: email!))"
        QRImage.image = GenerateQR(string: CombinedString)
    }
    
    func GenerateQR(string: String) -> UIImage? {
        
        let data        = string.data(using: String.Encoding.ascii)
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            if let output = filter.outputImage?.transformed(by: transform){
                return UIImage(ciImage: output)
            }
        }
        return nil

    }
    
}
