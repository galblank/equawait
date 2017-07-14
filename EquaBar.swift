//
//  EquaBar.swift
//  PeopleLinx
//
//  Created by Blank, Gal on 10/6/16.
//  Copyright © 2009 - Present Gal Blank. All rights reserved.
//

import UIKit

protocol barCycleDelegate {
    func finishedCycle()
}

class EquaBar: CALayer {

    var cycleDelegate:barCycleDelegate? = nil
    var timer:Timer? = nil
    var isExpanding = true
    var maxHeight:CGFloat = 0.0
    var minHeight:CGFloat = 0.0
    override init() {
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(EquaBar.expandCollaps), name: NSNotification.Name(rawValue: "internal.expandcollaps"), object: nil)
    }
    
    override init(layer: Any) {
        super.init(layer: layer)
    }
    
    func start()
    {
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(EquaBar.expandCollaps), userInfo: nil, repeats: true)
    }
    
    func expand()
    {
        DispatchQueue.main.async {
            self.frame.size.height += 7
            self.frame.origin.y -= 3.5
        }
    }
    
    func collaps()
    {
        DispatchQueue.main.async {
            self.frame.size.height -= 7
            self.frame.origin.y += 3.5
        }
    }
    
    func expandCollaps()
    {
        if isExpanding{
            
            if self.frame.size.height >= maxHeight{
                isExpanding = false
                collaps()
                return
            }
            expand()
        }
        else{
            if self.frame.size.height <= minHeight{
                timer?.invalidate()
                isExpanding = true
                cycleDelegate?.finishedCycle()
                return
            }
            collaps()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
