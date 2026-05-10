class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.2/rstudio-cli-v0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "43fe58aa6017e1e64ed952db703ba86d7bf2d72ac7d173dd6306197b6964478c"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.2/rstudio-cli-v0.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "78cf648fe6a6fba79e14c75f8aac06e9ffc9f41a64a54845dae6831713a0aade"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.2/rstudio-cli-v0.12.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e91f2f2d8894ea9dc4bf4ae077287076666120ff955ccfe79c539a6f6d70622"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.12.2/rstudio-cli-v0.12.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c2cc60d72ff169199d5180d471e53b6d27d2e028ddd546cf3c90ea2154c76952"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.12.2", shell_output("#{bin}/rstudio version")
  end
end
