class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.90"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.90-aarch64-apple-darwin.tar.gz"
    sha256 "bcacea7f4a824bd5e015bb17e5cc6bbf60dbdedb79c2963f4c1720cfc3fcdbe2"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.90-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07880780c87ae91349c8cf7fbe43e211e7df6d3bfae27d6254abd10fbb77b67c"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.90-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b2ff91f3f1c5c2859848a8c4e3f1518220a3de9514b64ef2c01b9281a77e3c0"
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
