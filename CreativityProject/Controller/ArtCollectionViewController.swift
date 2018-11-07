//
//  ArtCollectionViewController.swift
//  CreativityProject
//
//  Created by Jarman, Caroline on 11/7/18.
//  Copyright © 2018 ctec. All rights reserved.
// FIRST MAKE CLASS AND ALL METHODS PUBLIC
//Queue - lines that can be added to DQ -> deleting the line (from the front)
//Override -> UICollectionView has a method with the same header, override says to use mine not the default
//super.__________ -> go up to the parent and do THEIR instructions then do whatever else I said

import UIKit

private let reuseIdentifier = "artIdentifier"

public class ArtCollectionViewController: UICollectionViewController
{
    
    //Mark: Data members for Creativity Screen
    
    private let sectionInsets = UIEdgeInsets(top : 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRowCompact : CGFloat = 4
    private let itemsPerRowNormal : CGFloat = 6
    
    private let creativeCS : [UIImage?] =
    {
        return [
            UIImage(named: "AppArt11:7"),
            UIImage(named: "JavaHaiku"),
            UIImage(named: "MainframeHaiku"),
            UIImage(named: "MMSharkImage"),
            UIImage(named: "Octocat"),
            UIImage(named: "SAImage2"),
            UIImage(named: "SantaJaws"),
            UIImage(named: "SwiftHaiku")
        ]
    }()
    
    private let labels : [String] =
    {
        return [
        "App Drawn Art",
        "Haiku to Java",
        "Haiku to Mainframe",
        "Megashark v Mechashark",
        "My Octocat",
        "5 Headed Shark Attack",
        "Santa Jaws",
        "Haiku to Swift"
        ]
    }()

    public override func viewDidLoad() -> Void //life cycle method, always needs view did load-like START for the page
    {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

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
        return 0
    }


    public override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    public override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

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
