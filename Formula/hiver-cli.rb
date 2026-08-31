class HiverCli < Formula
  desc "AI-native CLI + MCP server for the Hiver HQ shared-inbox REST API"
  homepage "https://github.com/aclemen1/hiverhq-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.3.1/hiver-cli-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "bd5c1c5907383922dae98919a51caaa511bde24bd70b1ac0c863644026461db7"
    end
    on_intel do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.3.1/hiver-cli-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "9795ec3d92c9c5d305a5425db0943ccbe61a8070548e78a88b3484985c9762b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.3.1/hiver-cli-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb91b5eb1353f94eb974ee8617ebbba1cc4c6aacbf331d425b439788c3e366da"
    end
    on_intel do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.3.1/hiver-cli-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a2d4d1069e3aeb83a07f5ac154174d85b3499f26ce19b1f197482b600ae695a"
    end
  end

  def install
    bin.install "hiver"
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/hiver version")
  end
end
