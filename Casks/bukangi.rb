cask "bukangi" do
  version "1.0.1"
  sha256 "0d5e05a977fe37340747a63e4f52dec783dbef5b15ebbdf52a4f71264ceb37e9"

  url "https://github.com/dohyeon5626/desktop-bukangi/releases/download/v#{version}/Bukangi-#{version}.zip"
  name "Bukangi"
  name "부캉이"
  desc "그냥 부캉이 구경하는 앱"
  homepage "https://github.com/dohyeon5626/desktop-bukangi"

  depends_on macos: ">= :sonoma"

  app "Bukangi.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Bukangi.app"]
  end

  uninstall quit: "com.dohyeon5626.bukangi"

  zap trash: "~/Library/Preferences/com.dohyeon5626.bukangi.plist"
end