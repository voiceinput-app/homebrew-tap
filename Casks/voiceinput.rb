cask "voiceinput" do
  version "0.92.1"
  sha256 "c9659ae3f8b00e31771db0934dd50039b26c0e8c39d81043fa703672c646946f"

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
