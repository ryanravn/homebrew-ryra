class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.84"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.84-aarch64-apple-darwin.tar.gz"
    sha256 "5017b06999e5055fa14425dc193e171127ff723483d035cba4e23b6cfe43dfa2"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.84-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4dc25c9d9f8b8f7a2dd7e75af240ddc960fc2e9590283573012dda81417b9c3"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.84-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "977349ef59887935e30b55b06b6cbb06754f60d53159601954e03bda28dd5051"
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
