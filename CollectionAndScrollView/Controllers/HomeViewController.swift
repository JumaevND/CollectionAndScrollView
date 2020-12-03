//
//  HomeViewController.swift
//  CollectionAndScrollView
//
//  Created by Nuriddin Jumaev on 12/3/20.
//  Copyright © 2020 Nuriddin Jumaev. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    //ui obj
    @IBOutlet weak var collectionView: UICollectionView!
    let numberOfColumns: CGFloat = 2
    var items : Array<Item> = Array()
    
    //first load func
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    
    //MARK: - Methods
    
    func initViews(){
        
        addNavigationBar()
        collectionView.dataSource = self
        collectionView.delegate = self
        
            //Register CollectionView
        self.collectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        
        //Parameter of each item (width and height)
        if let flowLayout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize: CGRect = UIScreen.main.bounds
            let cellWidth = screenSize.width / numberOfColumns - 15
            flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        }
        
        //generating items
        items.append(Item(title: "Nature One", image: "p9"))
        items.append(Item(title: "Nature Two", image: "p2"))
        items.append(Item(title: "Nature Three", image: "p3"))
        items.append(Item(title: "Nature Four", image: "p4"))
        items.append(Item(title: "Nature Five", image: "p5"))
        items.append(Item(title: "Nature Six", image: "p6"))
        items.append(Item(title: "Nature seven", image: "p7"))
        items.append(Item(title: "Nature eight", image: "p8"))

    }
    
    func addNavigationBar(){

        let scroll = UIImage(named:"scroll")
        navigationItem.rightBarButtonItem =
            UIBarButtonItem(image: scroll, style: .plain,
                        target: self, action: #selector(scrollTapped))
        
        title = "Collection View"
    }
    
    func callScrollController(){
        let vc = ScrollViewController(nibName: "ScrollViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - Actions
    
    @objc func scrollTapped(){
        callScrollController()
    }

}

//MARK: - CollectionView

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = items[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! ItemCollectionViewCell
        
        cell.imageView.image = UIImage(named: item.image!)
          cell.titleLabel.text = item.title!
        
        return cell
    }
    
    
}
