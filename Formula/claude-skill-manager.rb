class ClaudeSkillManager < Formula
  desc "Manage Claude Code skills across projects — CLI + TUI"
  homepage "https://github.com/aclemen1/claude-skill-manager"
  url "https://files.pythonhosted.org/packages/source/c/claude-skill-manager/claude_skill_manager-0.2.0.tar.gz"
  sha256 "380a50ffc8c54e867eeb54abaca74ab0ee2ee99f1124838c4c46689cc2855ad3"
  license "MIT"

  depends_on "python@3.12"

  def install
    python3 = "python3.12"
    venv = libexec
    system python3, "-m", "venv", "--without-pip", venv
    system venv/"bin/python", "-m", "ensurepip", "--default-pip"
    system venv/"bin/pip", "install", "--no-deps", "."
    system venv/"bin/pip", "install", "."
    bin.install_symlink Dir[venv/"bin/csm"]
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm schema")
  end
end
