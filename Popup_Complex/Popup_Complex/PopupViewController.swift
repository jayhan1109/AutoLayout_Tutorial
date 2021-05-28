//
//  PopupViewController.swift
//  Popup_Complex
//
//  Created by Jeongho Han on 2021-05-27.
//

import UIKit

class PopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func closePopup(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
}
