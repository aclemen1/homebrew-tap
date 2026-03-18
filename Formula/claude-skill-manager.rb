class ClaudeSkillManager < Formula
  desc "Manage Claude Code skills across projects — CLI + TUI"
  homepage "https://github.com/aclemen1/claude-skill-manager"
  url "https://files.pythonhosted.org/packages/81/5b/8daf6699e978a4c0d9dc1a136f1b52f09e5be4b8adcb5d77c38cf2d9753b/claude_skill_manager-1.2.0.tar.gz"
  sha256 "f291d72022f84f914062af3020827f9a4aaf05ebc9d077ca3d622283e5785f7e"
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
