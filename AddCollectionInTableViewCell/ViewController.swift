//
//  ViewController.swift
//  AddCollectionInTableViewCell
//
//  Created by Engy on 11/3/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView:UITableView!
    var data = [
        MovieData(sectionType: "Telugu Movies", movies:Array(repeating: "3", count: 90)),
        MovieData(sectionType: "Web Series", movies:Array(repeating: "2", count: 90)),
        MovieData(sectionType: "Hollywood Movies", movies:Array(repeating: "1", count: 90)), MovieData(sectionType: "Telugu Movies", movies:Array(repeating: "3", count: 90)),
        MovieData(sectionType: "Web Series", movies:Array(repeating: "2", count: 90)),
        MovieData(sectionType: "Hollywood Movies", movies:Array(repeating: "1", count: 90))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].sectionType
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableCell
        cell.collectionInsidTable.tag = indexPath.section
        cell.item = data[indexPath.section]
        return cell
    }
    

}

