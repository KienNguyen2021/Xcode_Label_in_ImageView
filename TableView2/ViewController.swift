//
//  ViewController.swift
//  TableView2
//
//  Created by Kien Nguyen on 2021-05-18.

// 1 tableView full man hinh, va co hinh anh ben canh,auto layout : 4 canh = 0, full man hinh
// keo tableView Cell bo vo, Chon identifier cho tableView :"CELL"
// anh xa tu tableView, dat ten :myTable

// Tao 1file (Cocoa Class) DongTableViewCell quan tri file CELL cho tung dong
// Nhap tren CELL,

import UIKit

// this tableView, nen phai add them UITableViewDataSourse:

class ViewController: UIViewController,UITableViewDataSource {

    @IBOutlet weak var myTable: UITableView!
    
    // tao 1 mang kieu string:
    
    var mang :[String] = ["AA","BB","CC"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // de 2 functions duoi work, phai khai bao mytable :
        myTable.dataSource = self
    }

// phai khai bao them 2 functions di kem voi UITableViewDataSource :
// numberOfRowsInSection, cellForRowAt indexPathe:
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return mang.count       // return bao nhieu dong
    }
    
    
    
    
    // Cai gi trong cai dong do :
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // tao 1 variable cell :
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! DONGTableViewCell
        // Ep Cell ve DONG, nen use "as! DONG"---> Bo cell textLable...
        // Bo 1 tam hinh vo Assets- khong can duoi, can ten thoi :
        
        cell.imgHinh.image = UIImage(named: "bien")
        
        
        
        //cell?.textLabel?.text = mang[indexPath.row]
        
        //Unwrapped
        // va bo return cell!
        
        // last step : open a Label, after initiate in DONGTableView :
        //Tim myLabel da khai bao :
         cell.myLabel.text = mang[indexPath.row]
        //Means : boc AA BB CC from the above array de hien thi ben canh each image
        
        
        return cell
    }
    
}

