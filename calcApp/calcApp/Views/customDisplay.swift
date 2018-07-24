//
//  customDisplay.swift
//  calcApp
//
//  Created by Ferdinand Becker on 24/07/2018.
//  Copyright © 2018 Ferdinand Becker. All rights reserved.
//

import UIKit
@IBDesignable
class customDisplay: UILabel {

    override func prepareForInterfaceBuilder() {
        customiseView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customiseView()
    }
    
    
    func customiseView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .right
        
        clipsToBounds=true
        
       
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

}
}
