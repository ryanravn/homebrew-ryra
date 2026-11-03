class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.102"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.102-aarch64-apple-darwin.tar.gz"
    sha256 "5928b8e1c908598ff706c998a9604cbec725cb7c5b48143e59e1a201e7a7c7a1"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.102-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e871d1dcc22cbb078ef46556de7b188198341561d24a566bffbb6cee39af1b9a"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.102-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e71d4704c43d814c3aacd10edb81a6236d5c4ea787ed65c4578a916a8cdb083a"
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
