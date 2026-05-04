class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.1/rstudio-cli-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "e1e5a5474e5dd5378154757d52666b2d0cf77e1ad3775bf7367796c10af2ccae"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.1/rstudio-cli-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "341f371c3f87ed038a17e5597729ed4c3482326700a9dcff93e3c69bae0988c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.1/rstudio-cli-v0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2369df75355ab16ef0e5fd1619f22ec2b497cbfaff1318b5df94fb2370a4407"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.11.1/rstudio-cli-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6abad6cc1abb4728befc11a590e4479ba8a7f1d258f0e2df6462e89bd2be476a"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.11.1", shell_output("#{bin}/rstudio version")
  end
end
