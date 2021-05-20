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

// tableViewDataSource chua du, can them tableViewDelegate de tuong tac khach hang :
// add them UITableViewDelegate :---> khong co them function nao bat buoc di kem theo voi no !

import UIKit

// this tableView, nen phai add them UITableViewDataSourse:

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTable: UITableView!
    
    // tao 1 mang kieu string:
    
    var mang :[String] = ["bien","cay","nha","traicay","xe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // de 2 functions duoi work, phai khai bao mytable :
        myTable.dataSource = self
        
   // Sau khi co them UItableViewDelegate, can khai bao them :
        myTable.delegate = self
        // delegate se offer nhieu func hon nua....below :
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
        
        cell.imgHinh.image = UIImage(named: mang[indexPath.row])
        
        
        
        //cell?.textLabel?.text = mang[indexPath.row]
        
        //Unwrapped
        // va bo return cell!
        
        // last step : open a Label, after initiate in DONGTableView :
        //Tim myLabel da khai bao :
         cell.myLabel.text = mang[indexPath.row]
        //Means : boc AA BB CC from the above array de hien thi ben canh each image
        
        
        return cell
    }
    
// Delegate offer func below : DidSelectRowAt IndexPath: moi lan chon dong nao la no bat dong nay hien ra :
    
// Last Step : sau khi tao manhinh2 : viet code tai function nay :
    // Box Storyboard ID : "MANHINH2"
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)     // print index : 0,1,2 khi click on 3 pictures
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let mh2 = sb.instantiateViewController(identifier: "MANHINH2") as! ManHinh2ViewController    // Ep no ve manhinh2
        
        // Truoc khi push (truyen man hinh qua manhinh2, phai co tenHinh :
        
        mh2.tenHinh = mang[indexPath.row]
        
        self.navigationController?.pushViewController(mh2, animated: true)
        
    }
    
    
}

//last step :

//Tao man hinh2 - ViewController
// vo file, chon concoa class : Manhinh2- ViewController
// click tren manhinh2- vo box class ben trai, chon ViewController
// ket noi giua  2 minh hinh :
// click tren manh hinh ROOT : vo Editor Manue : chon Embedded In : Navigation Controller
// Quay lai ViewController viet code
