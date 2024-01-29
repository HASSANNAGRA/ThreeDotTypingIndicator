//
//  ViewController.swift
//  typingIndicatorDemo
//
//  Created by Hassan Azhar on 05/06/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dummyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTypingIndicator()
    }

   // private var typingIndicatorBottomConstraint: NSLayoutConstraint!
    
    private func createTypingIndicator() {
        let typingIndicator = TypingIndicatorView()
      view.insertSubview(typingIndicator, belowSubview: dummyView)

      NSLayoutConstraint.activate([
        typingIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        typingIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
      ])

    }
}

