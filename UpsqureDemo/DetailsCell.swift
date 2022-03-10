//
//  DetailsCell.swift
//  UpsqureDemo
//
//  Created by Meghna on 20/12/21.
//

import UIKit

class DetailsCell: UITableViewCell {
    
    @IBOutlet weak var lblCompanyNm: UILabel!
    @IBOutlet weak var lblLastNm: UILabel!
    @IBOutlet weak var lblFirstNm: UILabel!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var backView: UIView!
    
    var firstname : String?{
        didSet{
            setData()
        }
    }
    var lastname : String?{
        didSet{
            setData()
        }
    }
    var companynmae : String?{
        didSet{
            setData()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        prePareCell()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
extension DetailsCell{
    func prePareCell(){
        backView.backgroundColor = .clear
        imgProfile.layer.cornerRadius  = imgProfile.frame.height / 2
        imgProfile.clipsToBounds = true
        imgProfile.tintColor  = .black
        lblFirstNm.textColor = .black
        lblLastNm.textColor = .black
        lblCompanyNm.textColor = .black
        
    }
    func setData(){
        lblLastNm.text  = firstname
        lblFirstNm.text  = lastname
        lblCompanyNm.text = companynmae
       
    }
}
