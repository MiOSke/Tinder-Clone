//
//  ViewController.swift
//  Tinder Clone
//
//  Created by Michael Kampouris on 9/4/19.
//  Copyright © 2019 Michael Kampouris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let topStackView = TopNavigationStackView()
    let bottomButtonsStackView = HomeBottomControlsStackView()
    let cardsDeckView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardsDeckView.backgroundColor = .blue
        setupLayout()
        
        setupDummyCards()

    }

    
    // MARK: - FilePrivate
    
    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, cardsDeckView, bottomButtonsStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
    }
    
    fileprivate func setupDummyCards() {
        let cardView = CardView(frame: .zero)
        cardsDeckView.addSubview(cardView)
        cardView.fillSuperview()
    }
    
}

