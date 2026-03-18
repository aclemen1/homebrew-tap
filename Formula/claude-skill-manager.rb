class ClaudeSkillManager < Formula
  desc "Manage Claude Code skills across projects — CLI + TUI"
  homepage "https://github.com/aclemen1/claude-skill-manager"
  url "https://files.pythonhosted.org/packages/53/e0/c677e2fe9fb49650a09bfa20dabb319c86d3bccdee26aba920ad14080768/claude_skill_manager-1.5.0.tar.gz"
  sha256 "6cdf6c963f33aad6ac0c9f6ba0111d10a4ab8f85118dac2243ec24aaee73f124"
  license "MIT"

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
