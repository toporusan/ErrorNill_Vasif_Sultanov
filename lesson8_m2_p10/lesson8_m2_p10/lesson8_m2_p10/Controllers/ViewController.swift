

import UIKit

class ViewController: UIViewController {
    let profiles: [ProfileStructure] = ProfileStructure.getPruductDataSource()
    var isGridLayout = false

    lazy var cellSize = {
        $0.minimumLineSpacing = 30
        $0.scrollDirection = .vertical
        $0.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        $0.sectionInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)

        return $0
    }(UICollectionViewFlowLayout())

    lazy var cellSize2 = {
         $0.minimumLineSpacing = 30
        //$0.minimumInteritemSpacing = 20
        $0.scrollDirection = .horizontal
        let width = (view.frame.width - 100) / 2
        $0.itemSize = CGSize(width: width, height: width)
        $0.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)

        return $0
    }(UICollectionViewFlowLayout())

    lazy var collection: UICollectionView = {
        $0.dataSource = self
        $0.delegate = self
        $0.backgroundColor = .white
        $0.register(CollectionCell.self, forCellWithReuseIdentifier: CollectionCell.reuseIdentifier)
        $0.translatesAutoresizingMaskIntoConstraints = false

        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: cellSize))

    // Action Button
    lazy var changeLayout: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .greenProj
        $0.setTitle("change layout", for: .normal)
        $0.contentHorizontalAlignment = .center
        $0.layer.cornerRadius = 10
        $0.addAction(changeLayoutAction, for: .touchUpInside)
        return $0
    }(UIButton())

    // Action
    lazy var changeLayoutAction: UIAction = UIAction { _ in
        self.isGridLayout.toggle()
        self.collection.setCollectionViewLayout(self.isGridLayout ? self.cellSize2 : self.cellSize, animated: true)

        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(collection)
        view.addSubview(changeLayout)
        setupConstraints()
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            changeLayout.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            changeLayout.heightAnchor.constraint(equalToConstant: 50),
            changeLayout.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            changeLayout.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),

            collection.topAnchor.constraint(equalTo: changeLayout.bottomAnchor, constant: 20),
            collection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collection.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collection.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),

        ])
    }
}

extension ViewController: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        profiles.count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCell.reuseIdentifier, for: indexPath) as! CollectionCell

        let data = profiles[indexPath.item] // для коллекции item  для табл row
        cell.configure(with: data)
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }
}

extension UIImage {
    func getRatio() -> CGFloat {
        return size.height / size.width
    }
}
