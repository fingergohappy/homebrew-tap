class RepoPick < Formula
  desc "TUI-only remote Git repository file and directory downloader"
  homepage "https://github.com/fingergohappy/repo-pick"
  url "git@github.com:fingergohappy/repo-pick.git",
      using:    :git,
      tag:      "v0.1.0",
      revision: "7fe353cc8958bb0ea8e52140d196bae87846ef90"

  depends_on "go" => :build

  # install 从 v0.1.0 tag 源码构建 repo-pick 二进制。
  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/repo-pick"
  end

  # test 验证二进制可以非交互输出版本信息。
  test do
    assert_match "repo-pick #{version}", shell_output("#{bin}/repo-pick --version")
  end
end
