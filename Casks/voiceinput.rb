cask "voiceinput" do
  version "0.92.4"
  sha256 "91794aff063e7176a80f75faacb344d15c94239ddaaf5345f89b66ccde8b78a5"

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
