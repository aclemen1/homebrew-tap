class ClaudeSkillManager < Formula
  desc "Manage Claude Code skills across projects — CLI + TUI"
  homepage "https://github.com/aclemen1/claude-skill-manager"
  url "https://files.pythonhosted.org/packages/4b/a7/cac3b72edcdbdb9216ce7df8b19537b5d0baa39a4b7182aebe1abf6b0c1e/claude_skill_manager-1.1.0.tar.gz"
  sha256 "a45b4a879b3d46ec49445a71969bb4a36a116a72a63a97ce19baf34db69b60b6"
  license "MIT"

  depends_on "python@3.12"

  def install
    python3 = "python3.12"
    venv = libexec
    system python3, "-m", "venv", "--without-pip", venv
    system venv/"bin/python", "-m", "ensurepip", "--default-pip"
    system venv/"bin/pip", "install", "--no-cache-dir", "."
    bin.install_symlink Dir[venv/"bin/csm"]
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm schema")
  end
end
