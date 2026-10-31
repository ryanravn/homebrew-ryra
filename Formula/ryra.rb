class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.99"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.99-aarch64-apple-darwin.tar.gz"
    sha256 "494da7c8a2834bbb47b1ebd120744004c7a2677850a978d3dfbe5aae526e95fb"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.99-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b4c26a51c7162e0255161bd43209cf197128b8e30e927a7750b34c584eaae45"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.99-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d452a4d145ec33ca591088e977dbbc54bf30413210b8de6c818fd52bf2fda0a"
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
