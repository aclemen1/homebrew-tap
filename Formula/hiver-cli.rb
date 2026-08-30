class HiverCli < Formula
  desc "AI-native CLI + MCP server for the Hiver HQ shared-inbox REST API"
  homepage "https://github.com/aclemen1/hiverhq-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.3.0/hiver-cli-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "9cd31c6256e0f8e9ca597dfee71a82c3b69ec43f5030afb27e28a9a5e06b8a1e"
    end
    on_intel do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.3.0/hiver-cli-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "0b1d2b19e512b1e05b70c060ca0f59342484f6720898bccc74877277e40c3449"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.3.0/hiver-cli-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54487fcab14efbe2214aba5e1ad73b1b5662890f206f740f5de9fdf16bbaa101"
    end
    on_intel do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.3.0/hiver-cli-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d673d0411d587f8f6bec9da468a85838f072ad0f3a591908d5e783f68c3ca219"
    end
  end

  def install
    bin.install "hiver"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/hiver version")
  end
end
