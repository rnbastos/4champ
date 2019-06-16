//
//  ModuleCell.swift
//  ampplayer
//
//  Copyright © 2018 Aleksi Sitomaniemi. All rights reserved.
//

import UIKit

protocol ModuleCellDelegate: class {
  func faveTapped(cell: ModuleCell)
}

/**
 TableView cell representing a module
 */
class ModuleCell: UITableViewCell {
  weak var delegate: ModuleCellDelegate?
    
  @IBOutlet weak var nameLabel: UILabel?
  @IBOutlet weak var composerLabel: UILabel?
  @IBOutlet weak var sizeLabel: UILabel?
  @IBOutlet weak var typeLabel: UILabel?
  @IBOutlet weak var faveButton: UIButton?
  @IBOutlet weak var stopImage: UIImageView?
  
  @IBAction func faveTapped(_ sender: UIButton) {
    delegate?.faveTapped(cell: self)
  }
}