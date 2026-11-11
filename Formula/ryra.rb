class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.107"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.107-aarch64-apple-darwin.tar.gz"
    sha256 "cec11ab35ba44e0353aef0b43cd05c15efacfde47c02eec69b0e341b6f8276db"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.107-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "823f716bca6d0bbbdc68f5faadad3a03a5d2b9f14f19a50a18b84e637c4f60b7"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.107-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e10728b127433ad9311c92d776967dcca249c7db6a45fa9bd2ffcf9391b8dbe1"
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
