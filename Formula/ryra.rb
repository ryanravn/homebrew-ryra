class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.114"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.114-aarch64-apple-darwin.tar.gz"
    sha256 "4b63d9adf3b47f59adb02a2e6d454c26ae1b7ba47963af67e2c29da333644361"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.114-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "984494fafafca486ad8ca8d869f6e0b9b15df744bf97248c81fa8c3d9c37a936"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.114-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d48410ab8acfdc27738798bd4f50ebd4a5546bce3a74fa9ac0c133bda4f67054"
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
