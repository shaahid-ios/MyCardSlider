//
//  ViewController.swift
//  MyCardSlider
//
//  Created by Admin on 06/01/21.
//  Copyright © 2021 Admin. All rights reserved.
//

import UIKit
import CardSlider

struct Item: CardSliderItem{    
    
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
    
}



class ViewController: UIViewController, CardSliderDataSource {
 
    
    
    @IBOutlet var myButton: UIButton!
    
    var data = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.append(Item(image: UIImage(named: "apple1")!,
                         rating: nil,
                         title: "Apple Inc.",
                         subtitle: "Think different",
                         description: "Apple was founded by steve jobs"))
        
        data.append(Item(image: UIImage(named: "micro")!, rating: nil, title: "Microsoft Corporation", subtitle: "Be what’s next", description: "Microsoft was founded by Bill gates"))
        
        data.append(Item(image: UIImage(named: "pepul")!, rating: nil, title: "Pepul", subtitle: "Share your story to the world now", description: "Pepul was founded by Suresh and George"))
        
        // Do any additional setup after loading the view.
        
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
    }
    
    
    
    @IBAction func didTapButton() {
     
     
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "welcome!"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    func item(for index: Int) -> CardSliderItem {
         return data[index]
     }
     
     func numberOfItems() -> Int {
        return data.count
     }


}
