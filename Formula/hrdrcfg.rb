class Hrdrcfg < Formula
  desc "Open a project's Herdr space from the project's own config"
  homepage "https://github.com/matthewsinclair/hrdrcfg"
  url "https://github.com/matthewsinclair/hrdrcfg.git",
      tag:      "v0.1.0",
      revision: "e0e23047c2671b15dd4eef79661af32dd26077c7"
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
