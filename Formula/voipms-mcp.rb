class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.12.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.12.2/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "1b9f63e44a400cd8f5abce4990e4aa43176f053613af14427f8261ca95cb0320"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.12.2/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "2f43c199fae0d35a46a70b7d15504471b2a20cb88521d28bcf643b9223da809d"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
