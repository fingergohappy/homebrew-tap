class Omoc < Formula
  desc "TUI tool for configuring Oh My OpenCode agent and category model assignments"
  homepage "https://github.com/fingergohappy/omoc"
  url "https://github.com/fingergohappy/omoc/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "0c95d5e6a58e70522a654a77db27a0bc8852bc513b9cc12a55a030436a3461c4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_match "omoc", shell_output("#{bin}/omoc --help 2>&1", 1)
  end
end
