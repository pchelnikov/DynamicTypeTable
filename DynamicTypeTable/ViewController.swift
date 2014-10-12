//
//  ViewController.swift
//  DynamicTypeTable
//
//  Created by Mikhail Pchelnikov on 12/10/14.
//  Copyright (c) 2014 Mikhail Pchelnikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var mainView: UIView!
    var tableView: UITableView!
    var rows:[String] = []
    let cellIdentifier = "DynamicCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        rows = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit.", "Illa videamus, quae a te de amicitia dicta sunt.", "Duo Reges: constructio interrete. Quae contraria sunt his, malane? Scrupulum, inquam, abeunti;", "Nam et a te perfici istam disputationem volo, nec tua mihi oratio longa videri potest.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iam contemni non poteris. Nec vero sum nescius esse utilitatem in historia, non modo voluptatem. Confecta res esset. Similiter sensus, cum accessit ad naturam, tuetur illam quidem, sed etiam se tuetur; Dolor ergo, id est summum malum, metuetur semper, etiamsi non aderit; Mene ergo et Triarium dignos existimas, apud quos turpiter loquare? Duo Reges: constructio interrete. Commoda autem et incommoda in eo genere sunt, quae praeposita et reiecta diximus;", "Hoc enim identidem dicitis, non intellegere nos quam dicatis voluptatem."]
        
        mainView = UIView(frame: self.view.bounds)
        self.view = mainView
        
        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.registerClass(DynamicCell.self, forCellReuseIdentifier: cellIdentifier)
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0)
        
        mainView.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return 44.0
//    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as DynamicCell
        
//        cell.textLabel?.text = rows[indexPath.row]
        cell.headlineLabel.text = rows[indexPath.row]
        
        return cell
    }
}

