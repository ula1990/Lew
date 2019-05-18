//
//  MainUIImageView.swift
//  Lew
//
//  Created by Uladzislau Daratsiuk on 2019-05-18.
//  Copyright © 2019 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class MainUIImageView: UIImageView {
    
    init(contentMode: ContentMode, imageName: String) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints  = false
        self.image                                      = UIImage(named: imageName)
        self.contentMode                                = contentMode
        self.clipsToBounds                              = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

