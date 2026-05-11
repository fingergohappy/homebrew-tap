class RepoPick < Formula
  desc "TUI-only remote Git repository file and directory downloader"
  homepage "https://github.com/fingergohappy/repo-pick"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.5/repo-pick_0.1.5_darwin_arm64.tar.gz"
      sha256 "727cf52cdec9a6b5356a8bdad387a293e76e2f56f936cbaa66e536ca042fe5b3"
    else
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.5/repo-pick_0.1.5_darwin_amd64.tar.gz"
      sha256 "6f00655f95b9c8824bb2d55118f84b57d4da83c92e6f0981954b88bc8b19c928"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.5/repo-pick_0.1.5_linux_arm64.tar.gz"
      sha256 "8917ea51dbb598d1de3b926c18d7dad99248966d504fcf87a474556d9a701888"
    else
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.5/repo-pick_0.1.5_linux_amd64.tar.gz"
      sha256 "afaaa883b10937ec8f614f1d5ab27b376385ce595680e26fcb310a195d08adee"
    end
  end

  # install 安装 release tarball 中的 repo-pick 二进制。
  def install
    bin.install "repo-pick"
  end

  # test 验证二进制可以非交互输出版本信息。
  test do
    assert_match "repo-pick #{version}", shell_output("#{bin}/repo-pick --version")
  end
end
