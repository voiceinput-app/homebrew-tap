cask "voiceinput" do
  version "0.75.9"
  sha256 "6ae217bf38eae727a32c3fb363a54561892686795cdec66b84f48708623c5b81"

  url "https://dl.voiceinput.app/VoiceInput_v#{version}.dmg"
  name "VoiceInput"
  name "声忆"
  desc "Hold a key, speak, release to type"
  homepage "https://voiceinput.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "VoiceInput.app"

  zap trash: [
    "~/Library/Application Support/VoiceInput",
    "~/Library/Caches/com.jiangfyi.voiceinput",
    "~/Library/Preferences/com.jiangfyi.voiceinput.plist",
    "~/Library/Saved Application State/com.jiangfyi.voiceinput.savedState",
  ]
end
