//
//  DONGTableViewCell.swift
//  TableView2
//
//  Created by Kien Nguyen on 2021-05-18.
//
// sau khi tao DongTableViewCell, nhap chuot tren CELL
//thanh ben phai, class : chon DongTableViewCell
//Moi 1 dong la DongTableViewCell

// Library : imageView keo tha vo trong dong
//Anh xa tu Image vo DongTableViewCell

// Open 1 lable inside in CELL, nen khai bao trong DONGTableViewCell, anh xa :
// Qua ViewController, trong func tableView, khai bao cell.myLabel.text

import UIKit

class DONGTableViewCell: UITableViewCell {
    

    @IBOutlet weak var imgHinh: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
