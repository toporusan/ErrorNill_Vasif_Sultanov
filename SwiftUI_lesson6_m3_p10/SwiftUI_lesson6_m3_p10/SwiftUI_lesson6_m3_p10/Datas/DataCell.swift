import UIKit

final class DataCell: UITableViewCell {
    static var cellname = "DataCell"

    private lazy var cellBackground: UIView = {
        let view = UIView()
        //view.backgroundColor = .systemGray5
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var imgView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 11
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private lazy var header: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var mainText: UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 12)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configCell(data: DataStructure) {
        imgView.image = UIImage(named: data.imageName)
        header.text = data.header
        mainText.text = data.mainText
    }

    private func setupViews() {
        contentView.addSubview(cellBackground)
        cellBackground.addSubview(imgView)
        cellBackground.addSubview(header)
        cellBackground.addSubview(mainText)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // cellBackground — отступы от границ ячейки
            cellBackground.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            cellBackground.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            cellBackground.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            cellBackground.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),

            // imgView слева
            imgView.topAnchor.constraint(equalTo: cellBackground.topAnchor, constant: 10),
            imgView.leadingAnchor.constraint(equalTo: cellBackground.leadingAnchor, constant: 10),
            imgView.widthAnchor.constraint(equalToConstant: 78),
            imgView.heightAnchor.constraint(equalToConstant: 79),

            // header справа от imgView
            header.topAnchor.constraint(equalTo: cellBackground.topAnchor, constant: 10),
            header.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 10),
            header.trailingAnchor.constraint(equalTo: cellBackground.trailingAnchor, constant: -10),

            // mainText под header
            mainText.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 8),
            mainText.leadingAnchor.constraint(equalTo: header.leadingAnchor),
            mainText.trailingAnchor.constraint(equalTo: header.trailingAnchor),
            mainText.bottomAnchor.constraint(lessThanOrEqualTo: cellBackground.bottomAnchor, constant: -10)
        ])
    }
}
