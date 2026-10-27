class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.93"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.93-aarch64-apple-darwin.tar.gz"
    sha256 "e9bfaa9dd21f1fa82a8099c7bcbe543943d52fbb2b51841930aca5b5174e10af"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.93-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5cb9feb0b37f7651ecd8699f881acc791f47cfa9cffbce4bbfafd2ad8b2cc18"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.93-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd27a5806c99935c567bfe341fc8f575da8df8bbacf0b427c967de620269f2a0"
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
