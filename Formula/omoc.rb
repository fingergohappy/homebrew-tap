class Omoc < Formula
  desc "TUI tool for configuring Oh My OpenCode agent and category model assignments"
  homepage "https://github.com/fingergohappy/omoc"
  url "https://github.com/fingergohappy/omoc/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "e86afa711c257341cca75e88e3d8bc72354faeda4309ddd81cc7428643731fc2"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_match "omoc", shell_output("#{bin}/omoc --help 2>&1", 1)
  end
end
