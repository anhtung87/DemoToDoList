//
//  NewItemViewController.swift
//  DemoToDoList
//
//  Created by Hoang Tung on 1/5/20.
//  Copyright © 2020 Hoang Tung. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Name:"
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    let inputNameTextField: CustomTextField = {
        let textField = CustomTextField()
        return textField
    }()
    
    let phoneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Phone:"
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    let inputPhoneTextField: CustomTextField = {
        let textField = CustomTextField()
        return textField
    }()
    
    let selectPhotoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Select Photo", for: .normal)
        button.backgroundColor = .clear
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13)
        button.contentHorizontalAlignment = .left
        button.layer.borderWidth = 0
        return button
    }()
    
    let previewImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .lightGray
        return imageView
    }()
    
    let addButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Add Item", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.layer.cornerRadius = 8
        button.layer.borderWidth = 0
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupNavigation()
        addUIComponent()
        setupLayout()
        addBackFunctionToAddItemButton()
    }
    
    func setupNavigation() {
        navigationItem.title = "Create Item"
    }
    
    func addUIComponent() {
        view.addSubview(nameLabel)
        view.addSubview(inputNameTextField)
        view.addSubview(phoneLabel)
        view.addSubview(inputPhoneTextField)
        view.addSubview(selectPhotoButton)
        view.addSubview(previewImageView)
        view.addSubview(addButton)
    }
    
    func setupLayout() {
        let navigationHeight = self.navigationController?.navigationBar.frame.height
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 96 + navigationHeight!).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        nameLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        inputNameTextField.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor, constant: 0).isActive = true
        inputNameTextField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 16).isActive = true
        inputNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        inputNameTextField.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        phoneLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 32).isActive = true
        phoneLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        phoneLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        phoneLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        inputPhoneTextField.centerYAnchor.constraint(equalTo: phoneLabel.centerYAnchor, constant: 0).isActive = true
        inputPhoneTextField.leadingAnchor.constraint(equalTo: phoneLabel.trailingAnchor, constant: 16).isActive = true
        inputPhoneTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        inputPhoneTextField.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        selectPhotoButton.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 32).isActive = true
        selectPhotoButton.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: 0).isActive = true
        selectPhotoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25).isActive = true
        selectPhotoButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        previewImageView.topAnchor.constraint(equalTo: selectPhotoButton.bottomAnchor, constant: 32).isActive = true
        previewImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        previewImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        previewImageView.heightAnchor.constraint(equalTo: previewImageView.widthAnchor, multiplier: 1).isActive = true
        
        addButton.topAnchor.constraint(equalTo: previewImageView.bottomAnchor, constant: 64).isActive = true
        addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        addButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func addBackFunctionToAddItemButton() {
        addButton.addTarget(self, action: #selector(back), for: .touchUpInside)
    }
    
    @objc func back() {
        navigationController?.popViewController(animated: true)
    }

}
