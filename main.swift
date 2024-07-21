// @import Cli.swift
import Foundation

// TODO temp, make inputType enum
func Run (inputType: String = "CMD") {
  if (inputType == "CMD") {
    let _ = cli.Input()
  } else if (inputType == "FILE") {
    print("Enter the file path")
  } else {
    print("Enter the input")
  }
}

Run(inputType: "CMD")


// CLI
