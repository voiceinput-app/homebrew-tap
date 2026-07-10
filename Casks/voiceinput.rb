cask "voiceinput" do
  version "0.75.8"
  sha256 "cb2558ed01c9da7e49f80bef6c9c3b1d90ab6206382a8fdaa3f7526979f0f594"

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
