//
//  MainVC.swift
//  Lew
//
//  Created by Uladzislau Daratsiuk on 2019-05-18.
//  Copyright © 2019 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupNavBar()
    }
    
    private func setupView(){
        view.backgroundColor = .white
    }
    
    private func setupNavBar() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }

}
