//
//  BorderButton.swift
//  SWOOSH-APP
//
//  Created by Ravneet kaur on 2020-05-04.
//  Copyright © 2020 Ravneet kaur. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override  func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
