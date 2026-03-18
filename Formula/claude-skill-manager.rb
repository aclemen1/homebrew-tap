class ClaudeSkillManager < Formula
  desc "Manage Claude Code skills across projects — CLI + TUI"
  homepage "https://github.com/aclemen1/claude-skill-manager"
  url "https://files.pythonhosted.org/packages/14/a6/847030cda5f8794288e632514e893168ce7f2624ab8eb1070965440976a5/claude_skill_manager-1.6.0.tar.gz"
  sha256 "0d040fd7e71938ab67b24520ee7bc4ed01c0718edd8ca3dd4e1dffc71023b94c"
  license "MIT"

  bottle do
    root_url "https://github.com/aclemen1/homebrew-tap/releases/download/v1.6.0"
    rebuild 1
    sha256 cellar: :any, arm64_sonoma: "4cfbb085eb1b10caccc481340fd168933787d2371cc27ec60812ede04aefd627"
  end

  depends_on "python@3.12"
  depends_on "rust" => :build

  def install
    python3 = "python3.12"
    venv = libexec
    system python3, "-m", "venv", "--without-pip", venv
    system venv/"bin/python", "-m", "ensurepip", "--default-pip"
    system venv/"bin/pip", "install", "--no-cache-dir", "--no-binary", "pydantic-core", "."
    bin.install_symlink Dir[venv/"bin/csm"]
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm schema")
  end
end
