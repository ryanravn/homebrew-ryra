class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.44"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.44-aarch64-apple-darwin.tar.gz"
    sha256 "d8353489bf7cc3f8321c3913ef1b96b999b8548b5ab20d173730d1e5cca2a7b2"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.44-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48933a8d42b4e1d76add4521e99926261eec8f8f36a154f52e9b40cb426a0805"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.44-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bae5b9c35a6861c544ae8518079e30fd30075943ad2614b3e8ffe67a329a0fce"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
