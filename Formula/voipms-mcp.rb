class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.14.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.14.1/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "70edde78f5eaea1156a6acd1903caebbbe6dbbbdea4418b7131d844da425a385"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.14.1/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "766163c36e78919650e4a8660a219614aedfffdb7ab1e8ad3d3ef587064bcfd3"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
