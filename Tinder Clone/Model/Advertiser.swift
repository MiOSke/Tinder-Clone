//
//  Advertiser.swift
//  Tinder Clone
//
//  Created by Michael Kampouris on 9/5/19.
//  Copyright © 2019 Michael Kampouris. All rights reserved.
//

import UIKit

struct Advertiser: ProducesCardViewModel {
    let title: String
    let brandName: String
    let posterPhotoName: String
    
    func toCardViewModel() -> CardViewModel {
        let attributedString = NSMutableAttributedString(string: title, attributes: [.font : UIFont.systemFont(ofSize: 34, weight: .heavy)])
        attributedString.append(NSMutableAttributedString(string: "\n\(brandName)", attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .bold)]))
        return CardViewModel(imageNames: [posterPhotoName], attributedString: attributedString, textAlignment: .center)
    }
    
}
