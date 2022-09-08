//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jeffrey Wilcox on 9/7/22.
//

import UIKit
import AppsFlyerLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // jw's global button tap handler
    @IBAction func showMessage(sender: UIButton) {
        /*
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        */
        sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)

        UIView.animate(withDuration: 2.0,
                                   delay: 0,
                                   usingSpringWithDamping: CGFloat(0.20),
                                   initialSpringVelocity: CGFloat(6.0),
                                   options: UIView.AnimationOptions.allowUserInteraction,
                                   animations: {
                                    sender.transform = CGAffineTransform.identity
            },
                                   completion: { Void in()  }
        )
        
        // The sender is the button that is tapped by the user.
        print(sender.titleLabel?.text ?? "💩");
        
        AppsFlyerLib.shared().logEvent(AFEventLevelAchieved,
          withValues: [
             AFEventParamLevel: sender.titleLabel?.text ?? "💩"
        ]);
        
        
        
        
    }


}

