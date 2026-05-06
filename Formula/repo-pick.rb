class RepoPick < Formula
  desc "TUI-only remote Git repository file and directory downloader"
  homepage "https://github.com/fingergohappy/repo-pick"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.0/repo-pick_0.1.0_darwin_arm64.tar.gz"
      sha256 "f68e76e45a9f2ce3283c1f0b918c9d306c284925e3c035ec43ab4f3129bef832"
    else
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.0/repo-pick_0.1.0_darwin_amd64.tar.gz"
      sha256 "d791daea5b81d2b01bed0590e40a1aba67c02436fed6b5e9564d38022ae2e9f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.0/repo-pick_0.1.0_linux_arm64.tar.gz"
      sha256 "e9d4941e14b7f7e63b747638f915638b1c63818735bdc423af505ca2c4c14c29"
    else
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.0/repo-pick_0.1.0_linux_amd64.tar.gz"
      sha256 "16c0a7e1c9bb362f263318f50c8dba8b5cbf588ecd3b0543de5c591e3c34ceea"
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
