class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.79"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.79-aarch64-apple-darwin.tar.gz"
    sha256 "1d4c6c14dc2e917caade49bd1a23361ab49d05bcfe1aa892f2b537f729fb34a6"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.79-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e68e098fc4d5c4019cef9f3530e6a8679da8c4ddef0c980181b20d4a0dbbf04"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.79-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0d2c90c0e84bed1c3e487924db73773394b6c26abb260cbb881f06e844708d7"
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
