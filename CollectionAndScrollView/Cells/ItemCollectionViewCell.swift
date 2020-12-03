//
//  ItemCollectionViewCell.swift
//  CollectionAndScrollView
//
//  Created by Nuriddin Jumaev on 12/3/20.
//  Copyright © 2020 Nuriddin Jumaev. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {

    //ui obj
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var bottomview: UIView!
    @IBOutlet weak var secondaryView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    //first load func
    override func awakeFromNib() {
        super.awakeFromNib()


        initViews()
    }
    
  //MARK: - Methods
    func initViews(){
        
        mainView.layer.cornerRadius = CGFloat(7.0)
        secondaryView.layer.cornerRadius = CGFloat(7.0)
        secondaryView.layer.masksToBounds = true
        bottomview.layer.masksToBounds = true
    }
    

}
