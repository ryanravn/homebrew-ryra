class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.33"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.33-aarch64-apple-darwin.tar.gz"
    sha256 "da75ec4cea12f2e8e9ddf457738495045ab97f79a7e94b82d68c93e12d58105d"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.33-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "70f6c669666b15522d9a2001dc37efd0e939fcb8825f83659546c432891bd1b6"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.33-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cfe9db754a9e63aed1eb3496fc59fc1492cd4790c8d96a8af554fbf6026f474"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
