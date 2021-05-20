//
//  ManHinh2ViewController.swift
//  TableView2
//
//  Created by Kien Nguyen on 2021-05-19.
//

// Sau khi let sb, let mh2, self navigation o ViewController swift :
// Qua manHinh2 tao ra 1 variable de nhan tu minh hinh ROOT to manhinh2
import UIKit

class ManHinh2ViewController: UIViewController {
    
    // var tenHinh :[String]!
    
    // tenHinh la 1 chuoi binh thuong (string), not array :
    
    var tenHinh :String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: tenHinh)!)
        
        // Neu :(named: "nha")!)---> manhinh2 chi co 1 background hinh "nha"
        
        // No se moc tenhinh ra lam hinh nen cho Manhinh2
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
