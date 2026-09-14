class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.21.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.2/rstudio-cli-v0.21.2-aarch64-apple-darwin.tar.gz"
      sha256 "e8acd92be972daefbf6934cde5a373ed90f232cca0968ddcfa439d66db92214f"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.2/rstudio-cli-v0.21.2-x86_64-apple-darwin.tar.gz"
      sha256 "0d4082f787edddc0c915aaf1b8197d9b0708d5463ee1ed7c952a69b9547e08c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.2/rstudio-cli-v0.21.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f76c4eb73e9d26aaca03826eb9be99a6e789bb1aad784746ac8c7637ec75d68"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.2/rstudio-cli-v0.21.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e492cc3ce872d013a6b0036aa60767bb57dc2dc5692319c06df9c7cbed0f3d2a"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.21.2", shell_output("#{bin}/rstudio version")
  end
end
