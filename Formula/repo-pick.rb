class RepoPick < Formula
  desc "TUI-only remote Git repository file and directory downloader"
  homepage "https://github.com/fingergohappy/repo-pick"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.2/repo-pick_0.1.2_darwin_arm64.tar.gz"
      sha256 "0897e4947d999f2b002a0bb15635e465f7102f400ef993122ff70d9cd176ae41"
    else
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.2/repo-pick_0.1.2_darwin_amd64.tar.gz"
      sha256 "511b462f5bbac85c0d40d816252e87e0fbfc1e0cf8688a867be8c2d1832ad32d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.2/repo-pick_0.1.2_linux_arm64.tar.gz"
      sha256 "658266cffbb28437aad04911d0c96459a5f7788d7d7ad0633783a90378355dee"
    else
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.2/repo-pick_0.1.2_linux_amd64.tar.gz"
      sha256 "89b0c1b713f1a61909ae8f3b123cb2e82dd62f2c98f16cef9ad708f394fb2652"
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
