//
//  ViewController.swift
//  ocr
//
//  Created by Yuj-admin-mac02 on 03/05/19.
//  Copyright © 2019 Yuj-admin-mac02. All rights reserved.
//

import UIKit
import TesseractOCR
class ViewController: UIViewController, G8TesseractDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
      if   let tesseract = G8Tesseract(language: "eng")
      {
        tesseract.delegate = self
        tesseract.image = UIImage(named: "word")?.g8_blackAndWhite()
        tesseract.recognize()
        textview.text = tesseract.recognizedText
        
        
        }
    }

    @IBOutlet weak var textview: UITextView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

