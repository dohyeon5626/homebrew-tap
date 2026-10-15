cask "bukangi" do
  version "1.0.0"
  sha256 "1074fdc63fea670dcd831bbb7c7803556a557e0cfe5c8c79e2a8cbad11c76df2"

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