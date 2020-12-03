//
//  ScrollViewController.swift
//  CollectionAndScrollView
//
//  Created by Nuriddin Jumaev on 12/3/20.
//  Copyright © 2020 Nuriddin Jumaev. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    
    //first load func
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
        
    }

    // MARK: - Methods
    
    func initViews(){
        addNavigationBar()
        
    }
    
    func addNavigationBar(){

        let back = UIImage(named:"back")
        navigationItem.leftBarButtonItem =
            UIBarButtonItem(image: back, style: .plain,
                            target: self, action: #selector(backTapped))
        
        title = "Scroll View"
    }
        
    @objc func backTapped(){
        navigationController?.popViewController(animated: true)
    }

}
