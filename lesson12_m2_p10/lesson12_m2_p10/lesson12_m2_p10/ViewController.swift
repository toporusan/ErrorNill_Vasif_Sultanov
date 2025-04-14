//
//  ViewController.swift
//  lesson12_m2_p10
//
//  Created by Toporusan on 13.04.2025.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate, UITableViewDelegate {
    var defaults: CGAffineTransform?

    // MARK: lazy var avatarImg: UIImageView

    lazy var avatarImg: UIImageView = {
        // Создаю жест для картинки
        $0.restorationIdentifier = "avatarImg"
        $0.isUserInteractionEnabled = true

        var tap = UITapGestureRecognizer(target: self, action: #selector(avatarTabgest)) // простой тап
        tap.numberOfTapsRequired = 2
        $0.addGestureRecognizer(tap)

        var longTap = UILongPressGestureRecognizer(target: self, action: #selector(avatarLongTabgest)) // двойной тап
        longTap.minimumPressDuration = 1
        $0.addGestureRecognizer(longTap)

        var panGest = UIPanGestureRecognizer(target: self, action: #selector(avatarPangest)) // перемещение
        $0.addGestureRecognizer(panGest)

        self.defaults = $0.transform
        var defaultPosition = UITapGestureRecognizer(target: self, action: #selector(avatarDafaultPosition)) // возврат на исходную позицию
        defaultPosition.numberOfTapsRequired = 4
        $0.addGestureRecognizer(defaultPosition)

        $0.backgroundColor = .black
        $0.layer.cornerRadius = 30
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.widthAnchor.constraint(equalToConstant: 80).isActive = true
        $0.heightAnchor.constraint(equalToConstant: 80).isActive = true
        return $0
    }(UIImageView())

    lazy var nameLbl: UILabel = {
        $0.textColor = .black
        $0.textAlignment = .left
        $0.text = "Имя Фамилия"
        $0.font = .systemFont(ofSize: 16, weight: .bold)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    lazy var choosePhotoLbl: UILabel = {
        $0.isUserInteractionEnabled = true
        var tap = UITapGestureRecognizer(target: self, action: #selector(pickerChoosePhoto)) // простой тап
        tap.numberOfTapsRequired = 1
        $0.addGestureRecognizer(tap)

        $0.textColor = .blueProj
        $0.textAlignment = .left
        $0.text = "Выбрать фото"
        $0.font = .systemFont(ofSize: 16, weight: .regular)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    lazy var imagePicker: UIImagePickerController = {
        $0.sourceType = .photoLibrary
        $0.allowsEditing = true
        $0.delegate = self
        return $0
    }(UIImagePickerController())

    lazy var switchBtn: UISwitch = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.isOn = true
        $0.addAction(switchAction, for: .valueChanged)
        return $0
    }(UISwitch())

    lazy var switchAction: UIAction = UIAction { item in
        if let switchItm = item.sender as? UISwitch {
            if switchItm.isOn {
                self.imagePicker.sourceType = .photoLibrary
            } else {
                self.imagePicker.sourceType = .camera
            }
        }
    }

    lazy var ageLabel: UILabel = {
        $0.textColor = .black
        $0.textAlignment = .left
        $0.text = "Возраст"
        $0.font = .systemFont(ofSize: 16, weight: .bold)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    lazy var yearsOldLabel: UILabel = {
        $0.textColor = .black
        $0.textAlignment = .left
        $0.text = "30 лет"
        $0.font = .systemFont(ofSize: 16, weight: .bold)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    // MARK: SliderUI()

    lazy var sliderStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [yearMinLbl, slider, yearMaxLbl])
        stack.axis = .horizontal
        stack.spacing = 6
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    lazy var yearMinLbl: UILabel = {
        $0.textColor = .black
        $0.textAlignment = .left
        $0.text = "18"
        $0.font = .systemFont(ofSize: 17, weight: .bold)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    lazy var yearMaxLbl: UILabel = {
        $0.textColor = .black
        $0.textAlignment = .left
        $0.text = "60"
        $0.font = .systemFont(ofSize: 17, weight: .bold)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    lazy var slider: UISlider = {
        $0.minimumValue = 18
        $0.maximumValue = 60
        $0.isContinuous = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.value = 30
        $0.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        return $0
    }(UISlider())

    @objc func sliderValueChanged() {
        yearsOldLabel.text = String(format: "%.0f лет", slider.value)
    }

    // MARK: UISegmentControl()

    lazy var segmentControl: UISegmentedControl = {
        let control = UISegmentedControl()
        control.translatesAutoresizingMaskIntoConstraints = false
        control.insertSegment(withTitle: "Подписки", at: 0, animated: true)
        control.insertSegment(withTitle: "Подписчики", at: 1, animated: true)
        control.selectedSegmentIndex = 0
        
        // Используем addTarget для отслеживания изменения выбранного сегмента
        control.addTarget(self, action: #selector(segmentControlChanged), for: .valueChanged)
        
        return control
    }()
    
    var indexToChangeData = 0

    @objc func segmentControlChanged(sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        indexToChangeData = selectedIndex
        tableView.reloadData()
    }

    // MARK: Реализация таблицы с ячейками

    // var subscribes: [CollectionSection] = CollectionSection.mockData()
    var subscribes: [CollectionItem] = CollectionSection.mockData()
    var subscribes2: [CollectionItem] = CollectionSection.mockData2()

    lazy var tableView: UITableView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.dataSource = self
        $0.delegate = self
        $0.layer.cornerRadius = 20
        $0.register(FirstContentCell.self, forCellReuseIdentifier: FirstContentCell.reuseIdentifier)
        $0.register(SecondContentCell.self, forCellReuseIdentifier: SecondContentCell.reuseIdentifier)
        $0.separatorStyle = .singleLine
        $0.backgroundColor = .white
        return $0
    }(UITableView(frame: view.frame, style: .grouped))

    // MARK: viewDidLoad()  Загрузка контроллера

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        view.addSubview(avatarImg)
        view.addSubview(nameLbl)
        view.addSubview(choosePhotoLbl)
        view.addSubview(switchBtn)
        view.addSubview(ageLabel)
        view.addSubview(yearsOldLabel)
        view.addSubview(sliderStackView)
        view.addSubview(segmentControl)
        view.addSubview(tableView)

        layoutConfiguration()
    }

    // MARK: layoutConfiguration()

    func layoutConfiguration() {
        NSLayoutConstraint.activate([
            avatarImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 89),
            avatarImg.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),

            nameLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 104),
            nameLbl.leadingAnchor.constraint(equalTo: avatarImg.trailingAnchor, constant: 12),

            choosePhotoLbl.topAnchor.constraint(equalTo: nameLbl.bottomAnchor, constant: 6),
            choosePhotoLbl.leadingAnchor.constraint(equalTo: avatarImg.trailingAnchor, constant: 12),

            switchBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 98),
            switchBtn.leadingAnchor.constraint(equalTo: nameLbl.trailingAnchor, constant: 20),
            switchBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -86),

            ageLabel.topAnchor.constraint(equalTo: avatarImg.bottomAnchor, constant: 75),
            ageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),

            yearsOldLabel.topAnchor.constraint(equalTo: avatarImg.bottomAnchor, constant: 75),
            yearsOldLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),

            sliderStackView.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 10),
            sliderStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            sliderStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),

            segmentControl.topAnchor.constraint(equalTo: sliderStackView.bottomAnchor, constant: 23),
            segmentControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            segmentControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            segmentControl.heightAnchor.constraint(equalToConstant: 40),

            tableView.topAnchor.constraint(equalTo: segmentControl.bottomAnchor, constant: 35),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),

        ])
    }

    // MARK: Методы жестов

    @objc func avatarTabgest(sender: UIGestureRecognizer) {
        guard let view = sender.view as? UIImageView else { return }
        view.backgroundColor = .gray
        view.image = nil
    }

    @objc func avatarLongTabgest(sender: UILongPressGestureRecognizer) {
        guard let view = sender.view as? UIImageView else { return }
        if sender.state != .ended {
            view.backgroundColor = .black
            view.image = UIImage(named: "rectangle1")
            view.clipsToBounds = true
            avatarImg.image = view.image
        }
    }

    @objc func avatarPangest(sender: UIPanGestureRecognizer) {
        guard let view = sender.view else { return }
        let taranslate = sender.translation(in: self.view)
        view.transform = view.transform.translatedBy(x: taranslate.x, y: taranslate.y)
        sender.setTranslation(.zero, in: self.view) // Не даем складывать координаты, чтобы каждый шаг был последним

        print(taranslate)
    }

    @objc func avatarDafaultPosition(sender: UIGestureRecognizer) {
        guard let view = sender.view as? UIImageView else { return }
        view.backgroundColor = .black
        view.transform = defaults ?? .init()
    }

    @objc func pickerChoosePhoto(sender: UIGestureRecognizer) {
        present(imagePicker, animated: true)
    }

    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let imageEdited = info[.editedImage] as? UIImage {
            avatarImg.image = imageEdited
        }
        picker.dismiss(animated: true) // закрыть пиккер
    }
}


extension ViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch indexToChangeData {
        case 0:
            return subscribes.count
        case 1:
            return subscribes2.count
        default:
            return 0
        }
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexToChangeData {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: FirstContentCell.reuseIdentifier, for: indexPath) as! FirstContentCell
            cell.configCell(for: subscribes[indexPath.row])
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: SecondContentCell.reuseIdentifier, for: indexPath) as! SecondContentCell
            cell.configCell(for: subscribes2[indexPath.row])
            return cell
        default:
            return UITableViewCell()
        }
    }
}







//extension ViewController: UITableViewDataSource {
//    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return subscribes.count
//    }
//
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: FirstContentCell.reuseIdentifier, for: indexPath) as! FirstContentCell
//        cell.configCell(for: subscribes[indexPath.row])
//        return cell
//    }
//}


