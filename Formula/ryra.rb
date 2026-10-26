class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.91"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.91-aarch64-apple-darwin.tar.gz"
    sha256 "fff40920f8b24c81c74ed046791ca977824031162d057f6020e05191a7ef23b2"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.91-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b00b5cb590447a304084275495d7335f30f3d3b831d3c3ade117c70e9b65bea"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.91-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95b769a93e109234bb2abb5db2239d3b270b878c18c824ae4d43da9e057129c6"
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
