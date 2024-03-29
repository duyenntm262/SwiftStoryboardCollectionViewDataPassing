//
//  ViewController1.swift
//  CollectionView with DataPassing
//
//  Created by Din Din on 19/03/2024.
//

import UIKit

class ViewController1: UIViewController {

    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var mimg:UIImage?
    var mlbl:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = mlbl
        imageView.image = mimg

    }
    

}
