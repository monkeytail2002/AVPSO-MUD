require 'bundler'
Bundler.require

#Connect to Google Drive through API with creds
session = GoogleDrive::Session.from_service_account_key("../client_secret.json")

#Grabs the spreadsheet from Google by name
spreadsheet = session.spreadsheet_by_title("Rooms")

#Grabs the worksheets by name in the spreadsheet
worksheet = spreadsheet.worksheet_by_title("Exits")
room_worksheet = spreadsheet.worksheet_by_title("Rooms")

#test display/POC
puts worksheet["C3"]
puts room_worksheet["B2"]