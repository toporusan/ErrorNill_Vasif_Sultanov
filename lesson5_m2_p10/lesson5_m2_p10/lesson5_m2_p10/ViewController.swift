import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var users: [UserStruct] = UserStruct.mockUser()
    var groups: [GroupStruct] = GroupStruct.mockGroup()

    // let tableView: UITableView = UITableView(frame: .zero, style: .insetGrouped)

    lazy var tableView: UITableView = {
        $0.dataSource = self
        $0.delegate = self
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "UserCell")
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "GroupCell")
        return $0
    }(UITableView(frame: view.frame, style: .insetGrouped))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        view.addSubview(tableView)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? users.count : groups.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath)
            let user = users[indexPath.row]
            var config = cell.defaultContentConfiguration()
            config.text = user.title
            if let color = UIColor(hex: user.imgColor) {
                config.image = UIImage(systemName: "square.fill")?
                    .withTintColor(color, renderingMode: .alwaysOriginal)
            }
            cell.contentConfiguration = config
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath)
            let group = groups[indexPath.row]
            var config = cell.defaultContentConfiguration()
            config.text = group.title
            config.secondaryText = group.subTitle
            if let color = UIColor(hex: group.imgColor) {
                config.image = UIImage(systemName: "square.fill")?
                    .withTintColor(color, renderingMode: .alwaysOriginal)
            }
            cell.contentConfiguration = config
            return cell
        }
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "USERS" : "GROUPS"
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return section == 0 ? "любой футер текст" : nil
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.selectRow(at: indexPath, animated: true, scrollPosition: .middle)
        print(indexPath)
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if indexPath.section == 0 {
                users.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .automatic)
            } else {
                groups.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .automatic)
            }
        }
    }
}

extension UIColor {
    convenience init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let r = CGFloat((rgb >> 16) & 0xFF) / 255.0
        let g = CGFloat((rgb >> 8) & 0xFF) / 255.0
        let b = CGFloat(rgb & 0xFF) / 255.0

        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }
}
