class Omoc < Formula
  desc "TUI tool for configuring Oh My OpenCode agent and category model assignments"
  homepage "https://github.com/fingergohappy/omoc"
  url "https://github.com/fingergohappy/omoc/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "e41a264e7872a1b58bcb6b65cb20273772f8361a6a24ea3ac0042231975c521f"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_match "omoc", shell_output("#{bin}/omoc --help 2>&1", 1)
  end
end
