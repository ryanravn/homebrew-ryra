class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.69"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.69-aarch64-apple-darwin.tar.gz"
    sha256 "65cec108e0dd314b9df92f9bbda063054472740b1e0d8d0ddbc4b60cde869689"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.69-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dbb1a4e67b60c8a7d9224de4116b20e6197cc465d8fc18e26311a9d3882082c6"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.69-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f4904836123095bff5f7044d9fa4f0752cecdd8bca6d74089662c3fdc4ea828"
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
