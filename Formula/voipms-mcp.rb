class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.13.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.3/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "a6c77caf19fabdb6fdbec32b2728f177001cc723a749df87d362854e1336038f"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.3/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "79082a9f4b019a87d939bc2208cea251eab437054b90f1530d2668503eeeda5d"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
