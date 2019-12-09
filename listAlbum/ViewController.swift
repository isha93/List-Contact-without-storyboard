//
//  ViewController.swift
//  listAlbum
//
//  Created by isa nur fajar on 06/12/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    static let screenWidth:CGFloat = UIScreen.main.bounds.width
    static let screenHeight:CGFloat = UIScreen.main.bounds.height
    let horizontialCenter:CGFloat = screenWidth/2
    let verticalDistance:CGFloat = screenHeight/8


    weak var testView : UIView!
    weak var button : UIButton!
    weak var labelView : UILabel!
    
    override func loadView() {
        super.loadView()
        self.labelViews()
        self.buttonNext()
    }
    
    func buttonNext(){
        let button = UIButton(frame: CGRect(x: 200, y: 200, width: 100, height: 50))
        self.view.addSubview(button)
        button.center = CGPoint(x: horizontialCenter, y: 6*verticalDistance)
        button.backgroundColor = .green
        button.setTitle("Next", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.button = button
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.button.setTitle("Next", for: .normal)
        self.labelView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.labelView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        self.labelView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func buttonAction(sender : UIButton!){
        let vc = UINavigationController(rootViewController: ListAlbumController())
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    func labelViews () {
        let labelWelcome = UILabel()
        labelWelcome.translatesAutoresizingMaskIntoConstraints = false
        labelWelcome.center = CGPoint(x:0, y: 0)
        labelWelcome.text = "Welcome to user list"
        labelWelcome.textAlignment = .center
        self.view.addSubview(labelWelcome)
        self.labelView = labelWelcome
    }
}

