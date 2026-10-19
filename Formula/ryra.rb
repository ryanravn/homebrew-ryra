class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.81"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.81-aarch64-apple-darwin.tar.gz"
    sha256 "86bcf1d8744ee3b2a172fa4bf2848db8b2ef8450718f1d24986fa7a69a4379f1"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.81-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98bc4a8d7c23307547a5b55dc1b23a7c7379c9f4d4aa19e7629a994886d69c7e"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.81-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ae360d453326d1293405735f1c4e7e618ac3ec2d61a20e696f6c7f00af7b06b"
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
