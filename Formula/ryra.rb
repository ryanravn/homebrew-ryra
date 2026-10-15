class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.72"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.72-aarch64-apple-darwin.tar.gz"
    sha256 "ae1d70f351e8f2b8d31adb2ec55d0b65b477381c0b9b4efb1517714ce4c1ab77"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.72-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4a4036e75594c7d75dd2dafe9aa09ce32cc4c06c59c6bb81ea82839d81e3e2e"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.72-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ac08196ab0830e737c34abab8ac855bf7c91e4aead202073f1fe5a6caa68c35"
    end
  end
  def install
    bin.install "ryra"
    (pkgshare/"licenses").install "licenses/herdr-ui.txt"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
