require 'bundler'
Bundler.require


session = GoogleDrive::Session.from_service_account_key("../client_secret.json")

spreadsheet = session.spreadsheet_by_title("Rooms")

worksheet = spreadsheet.worksheets.first

puts worksheet["B1"]

