//
//  ViewController.swift
//  project1
//
//  Created by Anh Dinh Le on 2022-02-21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cell1: UILabel!
    @IBOutlet weak var cell2: UILabel!
    @IBOutlet weak var cell3: UILabel!
    @IBOutlet weak var cell4: UILabel!
    @IBOutlet weak var cell5: UILabel!
    @IBOutlet weak var cell6: UILabel!
    @IBOutlet weak var cell7: UILabel!
    @IBOutlet weak var cell8: UILabel!
    @IBOutlet weak var cell9: UILabel!
    @IBOutlet weak var cell10: UILabel!
    @IBOutlet weak var cell11: UILabel!
    @IBOutlet weak var cell12: UILabel!
    @IBOutlet weak var cell13: UILabel!
    @IBOutlet weak var cell14: UILabel!
    @IBOutlet weak var cell15: UILabel!
    @IBOutlet weak var cell16: UILabel!
    @IBOutlet weak var cell17: UILabel!
    @IBOutlet weak var cell18: UILabel!
    @IBOutlet weak var cell19: UILabel!
    @IBOutlet weak var cell20: UILabel!
    @IBOutlet weak var cell21: UILabel!
    @IBOutlet weak var cell22: UILabel!
    @IBOutlet weak var cell23: UILabel!
    @IBOutlet weak var cell24: UILabel!
    @IBOutlet weak var cell25: UILabel!
    @IBOutlet weak var cell26: UILabel!
    @IBOutlet weak var cell27: UILabel!
    @IBOutlet weak var cell28: UILabel!
    @IBOutlet weak var cell29: UILabel!
    @IBOutlet weak var cell30: UILabel!
    
    @IBOutlet weak var Q: UIButton!
    @IBOutlet weak var W: UIButton!
    @IBOutlet weak var E: UIButton!
    @IBOutlet weak var R: UIButton!
    @IBOutlet weak var T: UIButton!
    @IBOutlet weak var Y: UIButton!
    @IBOutlet weak var U: UIButton!
    @IBOutlet weak var I: UIButton!
    @IBOutlet weak var O: UIButton!
    @IBOutlet weak var P: UIButton!
    @IBOutlet weak var A: UIButton!
    @IBOutlet weak var S: UIButton!
    @IBOutlet weak var D: UIButton!
    @IBOutlet weak var F: UIButton!
    @IBOutlet weak var G: UIButton!
    @IBOutlet weak var H: UIButton!
    @IBOutlet weak var J: UIButton!
    @IBOutlet weak var K: UIButton!
    @IBOutlet weak var L: UIButton!
    @IBOutlet weak var Z: UIButton!
    @IBOutlet weak var X: UIButton!
    @IBOutlet weak var C: UIButton!
    @IBOutlet weak var V: UIButton!
    @IBOutlet weak var B: UIButton!
    @IBOutlet weak var N: UIButton!
    @IBOutlet weak var M: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var removeButton: UIButton!
    
    
    
    var row: Int = 0
    var column: Int = 0
    var correctCount: Int = 0
    var randomArray: [String] =  []
    var randomIndex = Int.random(in:0...11)
   // lazy var defaultWord = ["N","I","G","H","T"]
    lazy var defaultWord = [["N","I","G","H","T"],["H","E","L","L","O"],["M","O","N","E","Y"]
                            ,["K","N","O","L","L"],["C","R","I","M","P"],["W","I","N","C","E"]
                            ,["P","R","I","C","K"],["S","U","G","A","R"],["M","O","U","N","T"]
                            ,["W","R","U","N","G"],["C","O","U","L","D"],["P","E","R","K","Y"]]
    lazy var storeWord = Array<String>()
    lazy var tempStoreWord = Array<String>()
    lazy var tempStoreWord2 = Array<String>()
    //lazy var randomArray = Array<String>()
    lazy var array =
   [
   [cell1,cell2,cell3,cell4,cell5],
   [cell6,cell7,cell8,cell9,cell10],
   [cell11,cell12,cell13,cell14,cell15],
   [cell16,cell17,cell18,cell19,cell20],
   [cell21,cell22,cell23,cell24,cell25],
   [cell26,cell27,cell28,cell29,cell30]
   ]
    
  
   
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.isEnabled = false
        removeButton.isEnabled = false
    }
    
    
    @IBAction func ButtonQ(_ sender: Any) {
        //cell2.backgroundColor = UIColor.red
        availableSpace(row: row, column: column, character: "Q")
    }
    @IBAction func ButtonW(_ sender: Any) {
        availableSpace(row: row, column: column,character: "W")
    }
    @IBAction func ButtonE(_ sender: Any) {
        availableSpace(row: row, column: column,character: "E")
    }
    @IBAction func ButtonR(_ sender: Any) {
        availableSpace(row: row, column: column,character: "R")
    }
    @IBAction func ButtonT(_ sender: Any) {
        availableSpace(row: row, column: column,character: "T")
    }
    @IBAction func ButtonY(_ sender: Any) {
        availableSpace(row: row, column: column,character: "Y")
    }
    @IBAction func ButtonU(_ sender: Any) {
        availableSpace(row: row, column: column,character: "U")
    }
    @IBAction func ButtonI(_ sender: Any) {
        availableSpace(row: row, column: column,character: "I")
    }
    @IBAction func ButtonO(_ sender: Any) {
        availableSpace(row: row, column: column,character: "O")
    }
    @IBAction func ButtonP(_ sender: Any) {
        availableSpace(row: row, column: column,character: "P")
    }
    @IBAction func ButtonA(_ sender: Any) {
        availableSpace(row: row, column: column,character: "A")
    }
    @IBAction func ButtonS(_ sender: Any) {
        availableSpace(row: row, column: column,character: "S")
    }
    @IBAction func ButtonD(_ sender: Any) {
        availableSpace(row: row, column: column,character: "D")
    }
    @IBAction func ButtonF(_ sender: Any) {
        availableSpace(row: row, column: column,character: "F")
    }
    @IBAction func ButtonG(_ sender: Any) {
        availableSpace(row: row, column: column,character: "G")
    }
    @IBAction func ButtonH(_ sender: Any) {
        availableSpace(row: row, column: column,character: "H")
    }
    @IBAction func ButtonJ(_ sender: Any) {
        availableSpace(row: row, column: column,character: "J")
    }
    @IBAction func ButtonK(_ sender: Any) {
        availableSpace(row: row, column: column,character: "K")
    }
    @IBAction func ButtonL(_ sender: Any) {
        availableSpace(row: row, column: column,character: "L")
    }
    @IBAction func ButtonZ(_ sender: Any) {
        availableSpace(row: row, column: column,character: "Z")
    }
    @IBAction func ButtonX(_ sender: Any) {
        availableSpace(row: row, column: column,character: "X")
    }
    @IBAction func ButtonC(_ sender: Any) {
        availableSpace(row: row, column: column,character: "C")
    }
    @IBAction func ButtonV(_ sender: Any) {
        availableSpace(row: row, column: column,character: "V")
    }
    @IBAction func ButtonB(_ sender: Any) {
        availableSpace(row: row, column: column,character: "B")
    }
    @IBAction func ButtonN(_ sender: Any) {
        availableSpace(row: row, column: column,character: "N")
    }
    @IBAction func ButtonM(_ sender: Any) {
        availableSpace(row: row, column: column,character: "M")
    }
    @IBAction func Remove(_ sender: Any) {
        if column < 5
        {
            if row > 0
            {
            for subcell1 in array[row - 1]
            {

            subcell1?.text = ""
            subcell1?.backgroundColor = UIColor.lightGray
            }
            
            tempStoreWord2 = tempStoreWord.suffix(5)
            tempStoreWord2.forEach({button in
                changeColorRemove(character: button)})
            
            row = row - 1
            }
        }
    }
    
    
    
    
    @IBAction func SubmitBtn(_ sender: Any)
{
     
    if row < 6
    {
        
        randomArray = defaultWord[randomIndex]
        print(randomIndex)
        for char in storeWord
        {
            //if defaultWord[randomIndex].contains(char)
            if randomArray.contains(char)
            {
                let index: Int = storeWord.index(of: char)!
                let index2: Int = randomArray.index(of:char)!
                
                
                if index != index2
                {
                    
                    let incorrectPlaceCell = array[row][(index)]
                    incorrectPlaceCell?.backgroundColor = UIColor.orange
                    changeColorInclude(character: char, index: index, index2: index2)
                 
                    
                }
                else if index == index2
                {
                    let correctPlaceCell = array[row][(index)]
                    correctPlaceCell?.backgroundColor = UIColor.blue
                    changeColorInclude(character: char, index: index, index2: index2)
                    correctCount = correctCount + 1
                }
                
            }
            else
            {
                let index: Int = storeWord.index(of: char)!
                let MissedCell = array[row][(index)]
                MissedCell?.backgroundColor = UIColor.gray
                changeColorExclude(character: char)
            }
        }
            if correctCount == 5
            {
                
                    let alert = UIAlertController(title: "Notice", message: "The Word Was Correct", preferredStyle: .alert)
                    let destructiveButton = UIAlertAction(title: "OK", style: .default)
                    alert.addAction(destructiveButton)
                    self.show(alert, sender: nil)
                    correctCount = 0
            }
        print(randomArray)
        randomArray.removeAll()
        storeWord.removeAll()
        row = row + 1
        column = 0
        removeButton.isEnabled = true
        //submitButton.isEnabled = false
        
    }
    else
    {
        let alert = UIAlertController(title: "Notice", message: "You Don't Have Guesses Left, Try Again", preferredStyle: .alert)
        let destructiveButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(destructiveButton)
        self.show(alert, sender: nil)
        
        for cellContainer in array
        {
            for subCell in cellContainer
            {
                subCell?.text = ""
                subCell?.backgroundColor = UIColor.lightGray
            }
        }
        let arrayButton = [Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M]
        arrayButton.forEach({button in
                button!.backgroundColor = UIColor.lightGray
        })
        randomIndex = Int.random(in:0...11)
        randomArray.removeAll()
        storeWord.removeAll()
        row = 0
        column = 0
    }
}
    
    
    func availableSpace(row: Int, column:Int , character : String)
    {
        if (column < 4 )
        {
            removeButton.isEnabled = false
            let cell = array[row][column]
            self.column = column + 1
            cell!.text = String(character)
            storeWord.append(character)
            tempStoreWord.append(character)
            submitButton.isEnabled = false
            //print(tempStoreWord)
        }
        else if (column == 4 )
        {
            removeButton.isEnabled = false
            let cell = array[row][column]
            self.column = column + 1
            cell!.text = String(character)
            storeWord.append(character)
            tempStoreWord.append(character)
            submitButton.isEnabled = true
           // print(tempStoreWord)
        }
    }
    
    func changeColorInclude(character:String , index:Int , index2: Int)
    {
        var x: UIColor
        if index != index2
        {
            x = UIColor.orange
        }
        else if index == index2
        {
            x = UIColor.blue
        }
        else
        {
            x = UIColor.gray
        }
            
            
        switch character
        {
        case "Q" :
            Q.backgroundColor = x
        case "W":
            W.backgroundColor = x
        case "E":
            E.backgroundColor = x
        case "R":
            R.backgroundColor = x
        case "T":
            T.backgroundColor = x
        case "Y":
            Y.backgroundColor = x
        case "U":
            U.backgroundColor = x
        case "I":
            I.backgroundColor = x
        case "O":
            O.backgroundColor = x
        case "P":
            P.backgroundColor = x
        case "A":
            A.backgroundColor = x
        case "S":
            S.backgroundColor = x
        case "D":
            D.backgroundColor = x
        case "F":
            F.backgroundColor = x
        case "G":
            G.backgroundColor = x
        case "H":
            H.backgroundColor = x
        case "J":
            J.backgroundColor = x
        case "K":
            K.backgroundColor = x
        case "L":
            L.backgroundColor = x
        case "Z":
            Z.backgroundColor = x
        case "X":
            X.backgroundColor = x
        case "C":
            C.backgroundColor = x
        case "V":
            V.backgroundColor = x
        case "B":
            B.backgroundColor = x
        case "N":
            N.backgroundColor = x
        case "M":
            M.backgroundColor = x
        default:
            submitButton.backgroundColor = x
        }
    }
    
    func changeColorExclude(character:String)
    {
      
          var x = UIColor.gray
        
        switch character
        {
        case "Q" :
            Q.backgroundColor = x
        case "W":
            W.backgroundColor = x
        case "E":
            E.backgroundColor = x
        case "R":
            R.backgroundColor = x
        case "T":
            T.backgroundColor = x
        case "Y":
            Y.backgroundColor = x
        case "U":
            U.backgroundColor = x
        case "I":
            I.backgroundColor = x
        case "O":
            O.backgroundColor = x
        case "P":
            P.backgroundColor = x
        case "A":
            A.backgroundColor = x
        case "S":
            S.backgroundColor = x
        case "D":
            D.backgroundColor = x
        case "F":
            F.backgroundColor = x
        case "G":
            G.backgroundColor = x
        case "H":
            H.backgroundColor = x
        case "J":
            J.backgroundColor = x
        case "K":
            K.backgroundColor = x
        case "L":
            L.backgroundColor = x
        case "Z":
            Z.backgroundColor = x
        case "X":
            X.backgroundColor = x
        case "C":
            C.backgroundColor = x
        case "V":
            V.backgroundColor = x
        case "B":
            B.backgroundColor = x
        case "N":
            N.backgroundColor = x
        case "M":
            M.backgroundColor = x
        default:
            submitButton.backgroundColor = x
        }
    }
    
    func changeColorRemove(character:String)
    {
      
        var x = UIColor.lightGray
        
        switch character
        {
        case "Q" :
            Q.backgroundColor = x
        case "W":
            W.backgroundColor = x
        case "E":
            E.backgroundColor = x
        case "R":
            R.backgroundColor = x
        case "T":
            T.backgroundColor = x
        case "Y":
            Y.backgroundColor = x
        case "U":
            U.backgroundColor = x
        case "I":
            I.backgroundColor = x
        case "O":
            O.backgroundColor = x
        case "P":
            P.backgroundColor = x
        case "A":
            A.backgroundColor = x
        case "S":
            S.backgroundColor = x
        case "D":
            D.backgroundColor = x
        case "F":
            F.backgroundColor = x
        case "G":
            G.backgroundColor = x
        case "H":
            H.backgroundColor = x
        case "J":
            J.backgroundColor = x
        case "K":
            K.backgroundColor = x
        case "L":
            L.backgroundColor = x
        case "Z":
            Z.backgroundColor = x
        case "X":
            X.backgroundColor = x
        case "C":
            C.backgroundColor = x
        case "V":
            V.backgroundColor = x
        case "B":
            B.backgroundColor = x
        case "N":
            N.backgroundColor = x
        case "M":
            M.backgroundColor = x
        default:
            submitButton.backgroundColor = x
        }
    }
    
}

