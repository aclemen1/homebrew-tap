class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.0/rstudio-cli-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "254495e2e8a5fac144edb7a221347396c8b5f0bb19dd1bd69334b2336b717809"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.0/rstudio-cli-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "a5a16db44c6d6059e1e775f52537acf5f50e2b1e0281946786d2480abfe36cff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.0/rstudio-cli-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a1cc2e800a6287910cea98b558853de33a374b8478fc3efc725afdbc551f98e"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.6.0/rstudio-cli-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7281e4e3f4758e72022e01278901153f0e1c60256898fa01877ec4ac8040c557"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/rstudio version")
  end
end
