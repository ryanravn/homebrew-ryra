class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.104"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.104-aarch64-apple-darwin.tar.gz"
    sha256 "24a65675e4469726948092ad66beba712cf584078b6c0ecfa209f3f20032040b"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.104-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90d598ca83f3dd5416085c725060da5852df3a97e50df45d6f55a7c2cffd8f4a"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.104-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e5155bb7f330b42f625f0f0b8dd1ab999668fa8b3b05f650de9a30007dc5afd"
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
