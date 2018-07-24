//
//  RoundButton.swift
//  calcApp
//
//  Created by Ferdinand Becker on 24/07/2018.
//  Copyright © 2018 Ferdinand Becker. All rights reserved.
//

import UIKit

class RoundButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func prepareForInterfaceBuilder() {
        makeRoundButt()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        makeRoundButt()
    }
    
  
    
    func makeRoundButt(){
        let size: CGFloat=self.frame.size.width
        
        self.frame=CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: size, height: size)
        layer.cornerRadius=0.5*self.bounds.size.width //Roundness
        backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        clipsToBounds=true
    }
}
