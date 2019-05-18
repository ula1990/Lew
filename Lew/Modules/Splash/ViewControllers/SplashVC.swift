//
//  ViewController.swift
//  Lew
//
//  Created by Uladzislau Daratsiuk on 2019-05-18.
//  Copyright © 2019 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class SplashVC: UIViewController {
    
    private let logoImage = MainUIImageView(contentMode: .scaleAspectFit, imageName: Constants.ImageNames.logo)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupNavBar()
    }

    private func setupNavBar() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    private func setupView(){
        view.backgroundColor = .white
        view.addSubview(logoImage)
        
        NSLayoutConstraint.activate([
            
            logoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.heightAnchor.constraint(equalToConstant: 200),
            logoImage.widthAnchor.constraint(equalToConstant: 200)
            ])
        
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { [weak self](_) in
            let mainVC  = MainUITabBar()
            let vc      = UINavigationController(rootViewController: mainVC)
            self!.present(vc, animated: true, completion: nil)
        }
    }

}

