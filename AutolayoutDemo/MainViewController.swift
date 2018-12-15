//
//  MainViewController.swift
//  AutolayoutDemo
//
//  Created by Hugues Stéphano TELOLAHY on 12/15/18.
//  Copyright © 2018 Hugues Stéphano TELOLAHY. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    @IBOutlet weak var mandatoryLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateCellRows()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    @IBAction func errorSwitchValueChanged(_ sender: Any) {
        guard let switchControl = sender as? UISwitch else {
            return
        }
        mandatoryLabel.isHidden = switchControl.isOn
        errorLabel.isHidden = switchControl.isOn
        updateCellRows()
    }
    
    private func updateCellRows() {
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
}
