//
//  ViewController.swift
//  Netflix
//
//  Created by Trycatch on 13/03/21.
//  Copyright © 2021 Trycatch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var headArr = ["HD", "Movies", "Series"]
    
    var dataArr = [["HD1","HD2","HD3","HD4","HD5","HD5","HD5","HD5","HD5","HD5"],["K3G","Phantom","Spiderman","DDLJ","MS"],["S1","S2","S3","S44"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Welcome Github....!!!!")
        
        let x: String? = ""
        guard let val = x else {
            print("return")
            return
        }
        print("val is\(val)")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return headArr.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTVC
        cell.customCV.delegate = self
        cell.customCV.dataSource = self
        cell.selectionStyle = .none
        cell.customCV.tag = indexPath.section
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headArr[section]
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 8
        return dataArr[collectionView.tag].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellc", for: indexPath) as! CustomCVC
        cell.backgroundColor = UIColor.blue
        cell.lbl.text = dataArr[collectionView.tag][indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView.tag == 2 {
            return CGSize(width: 220, height: collectionView.frame.size.height)
        }
        return CGSize(width: 120, height: collectionView.frame.size.height)
    }
}
