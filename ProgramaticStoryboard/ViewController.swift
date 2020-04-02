//
//  ViewController.swift
//  ProgramaticStoryboard
//
//  Created by Nishad on 4/2/20.
//  Copyright © 2020 Nishad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(skullImageView)
        view.addSubview(introTextView)
        
        setupLayout()
    }


    //Background image used in the viewController
    let skullImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "skullandflower"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let introTextView: UITextView = {
        let textView = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "Join Our partner program", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSMutableAttributedString(string: "\n\n\nAre you ready for lots and lots of fun? Dont wait any longer! Join Today", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13), NSMutableAttributedString.Key.foregroundColor : UIColor.gray]))
        textView.attributedText = attributedText
        textView.textAlignment = .center
        textView.isEditable = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let topContainerView: UIView = {
        let topImageContainerView = UIView()
        topImageContainerView.backgroundColor = .blue
        //topImageContainerView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        return topImageContainerView
    }()
    
    func setupLayout()  {

         view.addSubview(topContainerView)
         topContainerView.translatesAutoresizingMaskIntoConstraints = false
         topContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
         topContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
         topContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
         topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        topContainerView.addSubview(skullImageView)
         skullImageView.translatesAutoresizingMaskIntoConstraints = false
         skullImageView.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor).isActive = true
         skullImageView.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor).isActive = true

        skullImageView.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        introTextView.topAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
         introTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
         introTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
         introTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    //End of background image

}

