class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.3/rstudio-cli-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "fd6e4b465d5775a77fc57edf60b05622dc65e4d749ff391564f46ed15ce9dc68"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.3/rstudio-cli-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "9e99866871f6f6c40a6fd8c562bb072576ba6dd3e8aa90771759786ac49114cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.3/rstudio-cli-v0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02a069859d46fd72667f38677cc75b82862d8560c1f41583755e007ebae71731"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.3/rstudio-cli-v0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbdd412ce35266d4ca2d77e75c3174bc9907ed74060e925734fc5a1a9833db84"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.5.3", shell_output("#{bin}/rstudio version")
  end
end
