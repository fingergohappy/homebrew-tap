class Omoc < Formula
  desc "TUI tool for configuring Oh My OpenCode agent and category model assignments"
  homepage "https://github.com/fingergohappy/omoc"
  url "https://github.com/fingergohappy/omoc/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "21b7c8cf2a47baeaa7a77ee423ee968727cd1785e3f518e479e6a69f32229c4b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_match "omoc", shell_output("#{bin}/omoc --help 2>&1", 1)
  end
end
