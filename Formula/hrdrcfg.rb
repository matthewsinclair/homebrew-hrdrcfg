class Hrdrcfg < Formula
  desc "Open a project's Herdr space from the project's own config"
  homepage "https://github.com/matthewsinclair/hrdrcfg"
  url "https://github.com/matthewsinclair/hrdrcfg.git",
      tag: "v0.3.0",
      revision: "da9c2893d73a460f1c1072907dc266c86e9ac58e"
  license "MIT"

  depends_on "jq"
  depends_on "yq"
  on_linux do
    depends_on "zsh"
  end

  def install
    libexec.install "bin", "VERSION"
    bin.install_symlink libexec/"bin/hrdrcfg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hrdrcfg --version")
  end
end
