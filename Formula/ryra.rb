class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.77"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.77-aarch64-apple-darwin.tar.gz"
    sha256 "3df4452ba336092ecf6a16e4f3decd6654d886d49115322d2328ac073508c89b"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.77-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4f3d55b1d03dec36dcd98c89c3ef16c124afb0f54b8d3b82ad9607bd3192ecc"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.77-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80154814e6028124b425a32f482fd0c8b9f64e7bcec925a3bc201e3bc6673f18"
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
