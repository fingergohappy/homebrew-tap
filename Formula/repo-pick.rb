class RepoPick < Formula
  desc "TUI-only remote Git repository file and directory downloader"
  homepage "https://github.com/fingergohappy/repo-pick"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.4/repo-pick_0.1.4_darwin_arm64.tar.gz"
      sha256 "aacecd0761efa990fbd4b7e3b36e5cea1fd17a7aef38642961ee11af6e2a0653"
    else
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.4/repo-pick_0.1.4_darwin_amd64.tar.gz"
      sha256 "033b232ab3d26a8bdc5d8f92979d52a56483e873e6eaffb59c61884c850926b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.4/repo-pick_0.1.4_linux_arm64.tar.gz"
      sha256 "8f861629363c2b278a7f2b7409954621fad83463c37495c40acda96f68e956cb"
    else
      url "https://github.com/fingergohappy/repo-pick/releases/download/v0.1.4/repo-pick_0.1.4_linux_amd64.tar.gz"
      sha256 "65f8678bbd50db84312db61759d6a76a96853130c2049cb7e359b694a60ffc32"
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
