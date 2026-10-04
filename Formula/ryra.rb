class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.46"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.46-aarch64-apple-darwin.tar.gz"
    sha256 "559ef85910c393bf7c44875dc572ba41f6b1b6ae41af195f9e5f1c9e8f4d9170"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.46-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06ce893548851d242fe18c9d3f9e6f392919f62f84190fd57f48c9c1b4882406"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.46-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "565ab25a6fc85ba820e98c7acbfb14e9376ff00b121c678257bd965a36408851"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
