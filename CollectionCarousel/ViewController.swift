//
//  ViewController.swift
//  CollectionCarousel
//
//  Created by sreekanth reddy iragam reddy on 7/3/19.
//  Copyright © 2019 sreekanth reddy iragam reddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {

    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let NewItems = ["miles","cards","flights","points","colors","floors"]
    let itemWidth = 200
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //collectionView.delegate = self as! UICollectionViewDelegate
        collectionView.dataSource = self
        collectionView1.dataSource = self
        
        let flowLayout = EdgeCardLayout()
        flowLayout.itemSize = CGSize(width: self.itemWidth, height: 150)
        collectionView.collectionViewLayout = flowLayout
        
        let centralFlowLayout = CentralCardLayout(scaled: false)
        centralFlowLayout.itemSize = CGSize(width: collectionView.frame.width, height: 150)
        collectionView1.collectionViewLayout = centralFlowLayout
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! NewCollectionViewCell
        cell.titleLabel.text = NewItems[indexPath.row]
        cell.backgroundColor = .red
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return NewItems.count
    }

}


