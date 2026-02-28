class Omoc < Formula
  desc "TUI tool for configuring Oh My OpenCode agent and category model assignments"
  homepage "https://github.com/fingergohappy/omoc"
  url "https://github.com/fingergohappy/omoc/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "1bc986f4ea4a182f3eb071e0a45424d3e099912edfc90c06953d5cf55fcdd383"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_match "omoc", shell_output("#{bin}/omoc --help 2>&1", 1)
  end
end
