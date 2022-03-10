//
//  ViewController.swift
//  UpsqureDemo
//
//  Created by Meghna on 20/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var imgPluse: UIImageView!
    
    var arrFirstName: [String] = []
    var arrLastName: [String] = []
    var arrCompanyName: [String] = []
    var arrimage : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    
}
extension ViewController{
    @IBAction func btnPlusClick(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "EditDetailVC") as! EditDetailVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
extension ViewController{
    func prepareUI(){
        imgPluse.tintColor  = .black
        tableView.backgroundColor = .clear
        tableView.tableFooterView = UIView()

        
        tableView.register(UINib(nibName: "DetailsCell", bundle: nil), forCellReuseIdentifier: "DetailsCell")

    }
}
extension ViewController : UITableViewDelegate ,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  arrFirstName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailsCell", for: indexPath) as! DetailsCell
        cell.firstname = arrFirstName[indexPath.row]
        cell.lastname = arrLastName[indexPath.row]
        cell.companynmae = arrCompanyName[indexPath.row]
        if arrimage[indexPath.row] == nil{
            cell.imgProfile.image = UIImage(named: "Profile")
        }else{
        cell.imgProfile.image = arrimage[indexPath.row]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}
