//
//  ViewController.swift
//  CollectionView with DataPassing
//
//  Created by Din Din on 19/03/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var movieTitle:[String] =
        ["Archary","Akanda","Bangarraju","Lakshya","Archary","Akanda","Bangarraju","Lakshya","Bangarraju","Lakshya","Puspa","Sarkvaripata","Archary","Akanda","Bangarraju","Lakshya","Puspa","Sarkvaripata","Archary","Akanda","Bangarraju","Lakshya","Puspa","Sarkvaripata"]
    
    var movieImages:[String] =
        ["image","image","image","image","image","image","image","image","image","image","image","image","image","image","image","image","image","image","image","image","image","image","image","image",]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.cornerRadius = 25
        cell.movieTitle.text = movieTitle[indexPath.row]
        cell.movieImg.image = UIImage(named: movieImages[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 20)/2
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
        
        vc.mimg = UIImage(named: movieImages[indexPath.row])
        vc.mlbl = movieTitle[indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
