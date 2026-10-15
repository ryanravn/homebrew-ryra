class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.75"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.75-aarch64-apple-darwin.tar.gz"
    sha256 "c40a09aca2d5f6682fbc342a4a47dff7be8ff9094053b1859b6f2d5538cf1721"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.75-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0b35ea5c5f254c9a5e3b9c27ad69f7867419f36a7ef02afed666b8b462d0d47"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.75-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a7ca2e8ba763a0164bceeb7259f09be0204ec2d1e85baee5ccb7348cf10f732"
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
