class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.15.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.15.1/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "8958e2a066b09f70d7f934ef489983797358d2883957fa2e18ce23d574f4c524"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.15.1/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "f63cd4849a1f095b7493c1c00182918e6e1c7ee5aaa8ae5d2a1d949ad34d665c"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
