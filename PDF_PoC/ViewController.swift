//
//  ViewController.swift
//  PDF_PoC
//
//  Created by tomoyaitagaki on 2020/07/20.
//  Copyright © 2020 eversense. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    @IBOutlet weak var PDFView: PDFView!
    override func viewDidLoad() {
        super.viewDidLoad()


        if let documentURL = Bundle.main.url(forResource: "schedule_age7", withExtension: "pdf") {
            if let document = PDFDocument(url: documentURL) {
                PDFView.document = document
            }
        }
    }
}
