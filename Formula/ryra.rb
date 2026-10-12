class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.64"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.64-aarch64-apple-darwin.tar.gz"
    sha256 "e82d70200ec4a6a7b54ed6bcb1d1f33079a7501fe8b74675ae70df6e43913d44"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.64-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c3a979fe76c0e718ecfbd2facba259540ad79b13ce34b197fbe436a4f200faf"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.64-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ced45dadf6dbc8854e9e782a90cf1986b782a2b34dadf3d77f36ebd23939214"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
