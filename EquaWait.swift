//  PeopleLinx
//
//  Created by Blank, Gal on 10/6/16.
//  Copyright © 2009 - Present Gal Blank. All rights reserved.
//

import UIKit

public class EquaWait: UIView,barCycleDelegate {
    
    
    var bar1:EquaBar!
    var bar2:EquaBar!
    var bar3:EquaBar!
    var bar4:EquaBar!
    var bar5:EquaBar!
    
    
    
    public var timer:Timer? = nil
    public var barInitialHeight:CGFloat = 5
    public var barLimits:CGFloat = 10.0
    public var barWidth:CGFloat = 6
    
    var barsArray:[EquaBar] = [EquaBar]()
    public var currentIndex = 0
    public var cycleBarIndex = 5
    
    public var label:String = "Loading..."
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.black
        alpha = 0.8
        layer.cornerRadius = 5.0
        let posX = frame.size.width / 2 - (((5 * 6) + (2 * 4)) / 2)
        let posY = frame.size.height / 2 - 5
        bar1 = EquaBar()
        bar1.cycleDelegate = self
        bar1.frame = CGRect(origin: CGPoint(x: posX,y: posY), size: CGSize(width: barWidth, height: barInitialHeight))
        bar1.backgroundColor = UIColor.white.cgColor
        bar1.opacity = 0.7
        bar1.maxHeight = frame.size.height - 20
        bar1.minHeight = barInitialHeight
        layer.addSublayer(bar1)
        barsArray.append(bar1)
        
        bar2 = EquaBar()
        bar2.frame = CGRect(origin: CGPoint(x: bar1.frame.origin.x + barWidth + 2,y: posY), size: CGSize(width: barWidth, height: barInitialHeight))
        bar2.backgroundColor = UIColor.white.cgColor
        bar2.opacity = 0.7
        bar2.maxHeight = frame.size.height - 20
        bar2.minHeight = barInitialHeight
        bar2.cycleDelegate = self
        layer.addSublayer(bar2)
        barsArray.append(bar2)
        
        bar3 = EquaBar()
        bar3.frame = CGRect(origin: CGPoint(x: bar2.frame.origin.x + barWidth + 2,y: posY), size: CGSize(width: barWidth, height: barInitialHeight))
        bar3.backgroundColor = UIColor.white.cgColor
        bar3.opacity = 0.7
        bar3.maxHeight = frame.size.height - 20
        bar3.minHeight = barInitialHeight
        bar3.cycleDelegate = self
        layer.addSublayer(bar3)
        barsArray.append(bar3)
        
        bar4 = EquaBar()
        bar4.frame = CGRect(origin: CGPoint(x: bar3.frame.origin.x + barWidth + 2,y: posY), size: CGSize(width: barWidth, height: barInitialHeight))
        bar4.backgroundColor = UIColor.white.cgColor
        bar4.maxHeight = frame.size.height - 20
        bar4.opacity = 0.7
        bar4.minHeight = barInitialHeight
        bar4.cycleDelegate = self
        layer.addSublayer(bar4)
        barsArray.append(bar4)
        
        bar5 = EquaBar()
        bar5.frame = CGRect(origin: CGPoint(x: bar4.frame.origin.x + barWidth + 2,y: posY), size: CGSize(width: barWidth, height: barInitialHeight))
        bar5.backgroundColor = UIColor.white.cgColor
        bar5.maxHeight = frame.size.height - 20
        bar5.opacity = 0.7
        bar5.minHeight = barInitialHeight
        bar5.cycleDelegate = self
        layer.addSublayer(bar5)
        barsArray.append(bar5)
        
        
        let textlabel = UILabel(frame: CGRect(x: bar1.frame.origin.x, y: frame.size.height - 20, width: frame.size.width - bar1.frame.origin.x, height: 20))
        textlabel.textAlignment = .left
        textlabel.textColor = UIColor.white
        textlabel.text = label
        textlabel.font = UIFont(name: "SFUIText-Regular", size: 10)
        addSubview(textlabel)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func animate()
    {
        timer = Timer.scheduledTimer(timeInterval: 0.15, target: self, selector: #selector(EquaWait.expandbarcollaps), userInfo: nil, repeats: true)
    }
    
    public func finishedCycle() {
        cycleBarIndex -= 1
        if(cycleBarIndex <= 0){
            cycleBarIndex = 5
            timer = Timer.scheduledTimer(timeInterval: 0.15, target: self, selector: #selector(EquaWait.expandbarcollaps), userInfo: nil, repeats: true)
        }
    }
    
    public func expandbarcollaps()
    {
        barsArray[currentIndex].start()
        if(currentIndex >= barsArray.count - 1){
            timer?.invalidate()
            currentIndex = 0
        }
        else{
            currentIndex += 1
        }
        
    }
    
}
