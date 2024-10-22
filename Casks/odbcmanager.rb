cask "odbcmanager" do
  version "1.0.23"
  sha256 "ffc905d9303b2b6a6eb6e28fd80cb1e5fd87f0eeb46ba63c17ecd70e6b7b0c34"

  url "https://www.odbcmanager.net/downloads/ODBC_Manager64_Installer.dmg"
  name "ODBC Manager"
  desc "ODBC Manager for macOS"
  homepage "https://www.odbcmanager.net"

  pkg "ODBC Manager.pkg"

  uninstall pkgutil: "com.odbcmanager.pkg"

  zap trash: [
    "~/Library/Preferences/com.odbcmanager.plist",
    "~/Library/Application Support/ODBC Manager",
  ]
end

