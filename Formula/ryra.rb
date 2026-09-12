class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.27"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.27-aarch64-apple-darwin.tar.gz"
    sha256 "3f579954fcbde18eed63b2d99bdd6ef3f5dc8a14c8f569625070f5c4a3a9895e"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.27-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98e8ca0e2a7fb20fd1c7e0e6fff81a97efc3e38f1b06686f19d6871213838150"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "917b7a9fe2c6d34391582e163737774ae5dd832cf98f9b79e897d81d2235683f"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
