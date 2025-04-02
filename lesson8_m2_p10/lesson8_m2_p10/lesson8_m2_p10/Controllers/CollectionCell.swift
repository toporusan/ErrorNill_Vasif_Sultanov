import UIKit

class CollectionCell: UICollectionViewCell {
    static let reuseIdentifier = "CollectionCell"
    let cellWidth: CGFloat = UIScreen.main.bounds.width - 100

    lazy var avatar: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()

    lazy var userName: UILabel? = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        return label
    }()

    lazy var mainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .darkBlueProj
        return imageView
    }()

    lazy var dateOf: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .greyProj
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.numberOfLines = 0
        return label
    }()

    lazy var header: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.numberOfLines = 0
        return label
    }()

    lazy var text: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.numberOfLines = 0
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.masksToBounds = true
        contentView.backgroundColor = .greyBackProj

        contentView.addSubview(avatar)
        
        if let userName = userName {
            contentView.addSubview(userName)
        }
        
        contentView.addSubview(mainImage)
        contentView.addSubview(dateOf)
        contentView.addSubview(header)
        contentView.addSubview(text)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with viewModel: ProfileStructure) {
        avatar.image = UIImage(named: viewModel.avatar)
        self.userName?.text = viewModel.userName
        mainImage.image = UIImage(named: viewModel.mainImage)
        dateOf.text = viewModel.dateOf
        header.text = viewModel.header
        text.text = viewModel.text

        setupConstraints()
    }

    func setupConstraints() {
        let getRatio = mainImage.image?.getRatio() ?? 1
        let cellHeight: CGFloat = cellWidth * getRatio

        NSLayoutConstraint.activate([
            avatar.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            avatar.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),

            // Проверяем наличие userName перед добавлением ограничений
            userName?.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            userName?.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 20),
            userName?.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),

            mainImage.topAnchor.constraint(equalTo: avatar.bottomAnchor, constant: 20),
            mainImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            mainImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            mainImage.widthAnchor.constraint(equalToConstant: cellWidth),
            mainImage.heightAnchor.constraint(equalToConstant: cellHeight),

            dateOf.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 10),
            dateOf.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            dateOf.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),

            header.topAnchor.constraint(equalTo: dateOf.bottomAnchor, constant: 4),
            header.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            header.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),

            text.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 10),
            text.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            text.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            text.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
        ].compactMap { $0 }) // Убираем `nil` значения, если userName отсутствует
    }
}
