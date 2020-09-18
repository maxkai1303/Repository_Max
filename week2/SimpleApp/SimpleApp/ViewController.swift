//
//  ViewController.swift
//  Simple App
//
//  Created by Max Kai on 2020/9/17.
//

import UIKit


class ViewController: UIViewController {

    
    
    @IBOutlet weak var textLabel: UILabel!
    
    let violet = UIColor(red: 138/255, green: 43/255, blue: 226/255, alpha: 1)
    let indigo = UIColor(red: 0, green: 0, blue: 225, alpha: 1)
    let blue = UIColor(red: 25/255, green: 25/255, blue: 112/255, alpha: 1)
    let green = UIColor(red: 0, green: 197/255, blue: 205/255, alpha: 1)
    let yellow = UIColor(red: 255, green: 136/255, blue: 139/255, alpha: 1)
    let orange = UIColor(red: 255, green: 153/255, blue: 18/255, alpha: 1)
    let red = UIColor(red: 255, green: 48/255, blue: 48/255, alpha: 1)
    
    var rainbow: [UIColor] = [UIColor]()
    var colorNumber = Int.random(in: 0...6)
    
    override func viewDidLoad() {
    super.viewDidLoad()
        rainbow = [violet,indigo,blue,green,yellow,orange,red]
        view.backgroundColor = rainbow[colorNumber]
    }
    
    
    @IBAction func textRandon(_ sender: UIButton) {
        let textArray = [
            "Loremipsumdolorsitamet,consecteturadipiscingelit.Maecenastempus.",
            "Contrarytopopularbelief,LoremIpsumisnotsimplyrandomtext.",
            "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
            "lookeduponeofthemoreobscureLatinwords,consectetur",
            "From a Lorem Ipsum passage, and going through the cites of the word",
            "Thisbookisatreatiseonthetheoryofethics,verypopularduringthe.",
            "ThefirstlineofLoremIpsum,Loremipsumdolorsitamet.."
        ]
        colorNumber = Int.random(in: 0...6)
        let show = textArray.randomElement()
        if show != nil {
            textLabel.text = show!
        }
    }
    @IBAction func viewColor(_ sender: UIButton) {
        view.backgroundColor = rainbow[colorNumber]
//        if colorNumber == 6 {
//                colorNumber = 0
//            } else {
//                colorNumber += 1
//            }
        }
    }
    


