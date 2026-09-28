class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.22.0/rstudio-cli-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe43e249633abf23292f65818e7b731edc883cc9bc4be242bd879dbada3f668d"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.22.0/rstudio-cli-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "2a4f4a44f7247b111e98a533f136b7582c4ed2603c7f305d7e76e1feca2942ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.22.0/rstudio-cli-v0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f03a0533b91071676e82f665f3a01d472afeddd23bc61386fab2e6b1d4768208"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.22.0/rstudio-cli-v0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "145c571724f52d25eb2bd2ff145b69d5f93d1cffad5faa40a6c541d26c840fc4"
    end
  end

  def install
    bin.install "rstudio"
    # Collision-proof alias: RStudio Server 2026.10 ships its own `rstudio`
    # in the terminal PATH that shadows this binary; `rstudio-cli` cannot clash.
    bin.install_symlink bin/"rstudio" => "rstudio-cli"
  end

  test do
    assert_match "0.22.0", shell_output("#{bin}/rstudio version")
    assert_match "0.22.0", shell_output("#{bin}/rstudio-cli version")
  end
end
