//
//  TableCell.swift
//  AddCollectionInTableViewCell
//
//  Created by Engy on 11/3/24.
//
//0 /1 /2
import UIKit

class TableCell: UITableViewCell {

    @IBOutlet var collectionInsidTable: UICollectionView!
    var item:MovieData?
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionInsidTable.delegate = self
        collectionInsidTable.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension TableCell: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return item?.movies.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionCell
        cell.image.image = UIImage(named: item!.movies[indexPath.row])
        return cell
    }
    

}
