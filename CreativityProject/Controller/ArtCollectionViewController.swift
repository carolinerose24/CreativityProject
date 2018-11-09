//
//  ArtCollectionViewController.swift
//  CreativityProject
//
//  Created by Jarman, Caroline on 11/7/18.
//  Copyright © 2018 ctec. All rights reserved.
// FIRST MAKE CLASS AND ALL METHODS PUBLIC
//Queue - lines that can be added to DQ (dequeue) -> deleting the line (from the front)
//Override -> UICollectionView has a method with the same header, override says to use mine not the default
//super.__________ -> go up to the parent and do THEIR instructions then do whatever else I said

import UIKit

private let reuseIdentifier = "artIdentifier"

public class ArtCollectionViewController: UICollectionViewController
{
    
    //MARK: Data members for Creativity Screen
    
    private let sectionInsets = UIEdgeInsets(top : 50.0, left: 20.0, bottom: 50.0, right: 20.0) //gap between items (larger on top/bottom)
    private let itemsPerRowCompact : CGFloat = 4
    private let itemsPerRowNormal : CGFloat = 6
    
    private let creativeCS : [UIImage?] =
    {
        return [
            UIImage(named: "Octocat"),
            UIImage(named: "AppArt11:7"),
            UIImage(named: "JavaHaiku"),
            UIImage(named: "MainframeHaiku"),
            UIImage(named: "SwiftHaiku"),
            UIImage(named: "MMSharkImage"),
            UIImage(named: "SAImage2"),
            UIImage(named: "SantaJaws"),
            UIImage(named: "PacemakerHacked"),


        ]
    }()
    
    private let labels : [String] =
    {
        return [
        "My Octocat",
        "App Drawn Art",
        "Haiku to Java",
        "Haiku to Mainframe",
        "Haiku to Swift",
        "Megashark v Mechashark",
        "5 Headed Shark Attack",
        "Santa Jaws",
        "Pacemaker Hacked"

        ]
    }()

    //MARK: - Lifecycle
    
    public override func viewDidLoad() -> Void //life cycle method, always needs view did load-like START for the page
    {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

//        // Register cell classes --don't use this
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

//    public override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated. don't need this method!
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    public override func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

                //_ means no outside name,          (inside name is collection view)
    public override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of items
        return creativeCS.count
    }

    public override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
        //indexPath.row = mylist.get in java
        //! after a variable or return in force unwrap
        
        artCell.backgroundColor = .cyan
        artCell.artImage.image = creativeCS[indexPath.row]
        artCell.artLabel.text = labels[indexPath.row]
    
        // Configure the cell
    
        return artCell
    }

    // MARK: UICollectionViewDelegate
    
    public func collectionView(_collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let paddingSpace = sectionInsets.left * (itemsPerRowCompact + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRowCompact
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section : Int) -> UIEdgeInsets
    {
        return sectionInsets
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section : Int) -> CGFloat
    {
        return sectionInsets.left
    }
    
    
    
    

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
