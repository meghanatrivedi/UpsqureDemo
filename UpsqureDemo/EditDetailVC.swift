//
//  EditDetailVC.swift
//  UpsqureDemo
//
//  Created by Meghna on 20/12/21.
//

import UIKit

class EditDetailVC: UIViewController{
    
    @IBOutlet weak var btnAddData: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var imgBack: UIView!
    @IBOutlet weak var txtCompanyName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var btnAddProfile: UIButton!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var profileBackView: UIView!
    
    var imagePicker = UIImagePickerController()
    
    var arrFirstName : [String] = []
    var arrLastName : [String] = []
    var arrCompanyName : [String] = []
    var arrimage : [UIImage] = []
    var images : UIImage?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prePareUI()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func btnAddDataClick(_ sender: UIButton) {
        if txtFirstName.text == ""{
            
        }else if txtLastName.text == ""{
            
        }else if txtCompanyName.text == ""{
            
        }else if images == nil{
            
        }
        else{
            arrFirstName.append(txtFirstName.text!)
            arrLastName.append(txtLastName.text!)
            arrCompanyName.append(txtCompanyName.text!)
            
            
            
            guard let tableViewVC = navigationController?.viewControllers.first as? ViewController else { return }
            tableViewVC.arrFirstName.append(contentsOf: arrFirstName)
            tableViewVC.arrLastName.append(contentsOf: arrLastName)
            tableViewVC.arrCompanyName.append(contentsOf: arrCompanyName)
            tableViewVC.arrimage.append(contentsOf: arrimage)
                    navigationController?.popViewController(animated: true)

        }
    }
}
extension EditDetailVC{
    func prePareUI(){
        profileBackView.backgroundColor = .lightGray
        imgProfile.tintColor = .black
        imgProfile.layer.cornerRadius = imgProfile.frame.height / 2
        
        imgBack.tintColor  = .black
        
        
        btnAddProfile.setTitle( "Add Photos", for: .normal)
        btnAddProfile.setTitleColor(.blue, for: .normal)
        
        
        txtFirstName.placeholder = "First Name"
        txtFirstName.textColor = .black
       
        
        txtLastName.placeholder = "First Name"
        txtLastName.textColor = .black
        
        txtCompanyName.placeholder = "First Name"
        txtCompanyName.textColor = .black
        
    }
}
extension EditDetailVC{
    
    @IBAction func btnAddProfileClick(_ sender: UIButton) {
        
        ImagePickerManager().pickImage(self){ image in
            self.imgProfile.image  = image
            self.images = image
            self.arrimage.append(image)
            }
        
    }
    
    
    
    @IBAction func btnBack(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
