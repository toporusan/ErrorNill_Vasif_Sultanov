

import UIKit

class ViewController: UIViewController {

    var name: UILabel = UILabel()
    var nameValue: UILabel = UILabel()
    var lastName: UILabel = UILabel()
    var lastNameValue: UILabel = UILabel()
    var groupNumber: UILabel = UILabel()
    var groupNumberValue: UILabel = UILabel()
    var addBtn: UIButton = UIButton()
    var clearData: UILabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // top + 40
        name.frame = CGRect(x: 51, y: 120, width: 87, height: 19)
        name.text = "Имя:"
        name.textColor = .black
        name.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        view.addSubview(name)
        
        nameValue.frame = CGRect(x: name.frame.maxX - 45, y: 120, width: 87, height: 19)
        nameValue.text = "Name"
        nameValue.textColor = .red
        nameValue.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        view.addSubview(nameValue)
        
        lastName.frame = CGRect(x: 50, y: 152, width: 153, height: 19)
        lastName.text = "Фамилия:"
        lastName.textColor = .black
        lastName.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        view.addSubview(lastName)
        
        lastNameValue.frame = CGRect(x: lastName.frame.maxX - 70, y: 152, width: 87, height: 19)
        lastNameValue.text = "Surname"
        lastNameValue.textColor = .red
        lastNameValue.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        view.addSubview(lastNameValue)
        
        groupNumber.frame = CGRect(x: 51, y: 184, width: 160, height: 19)
        groupNumber.text = "Номер потока:"
        groupNumber.textColor = .black
        groupNumber.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        view.addSubview(groupNumber)
        
        groupNumberValue.frame = CGRect(x: groupNumber.frame.maxX - 40, y: 184, width: 87, height: 19)
        groupNumberValue.text = "ios 9"
        groupNumberValue.textColor = .red
        groupNumberValue.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        view.addSubview(groupNumberValue)  
        
        addBtn.frame = CGRect(x: 23, y: view.center.y + 200, width: 360, height: 69)
        addBtn.setTitle("Добавить данные", for: .normal)
        addBtn.backgroundColor = .black
        addBtn.layer.cornerRadius = 23
        view.addSubview(addBtn)
        
        clearData.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 2 + 300, width: 138, height: 19)
        clearData.text = "Очистить данные"
        clearData.numberOfLines = 0
        clearData.textColor = .blue
        clearData.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        view.addSubview(clearData)
        
     
    }


}

