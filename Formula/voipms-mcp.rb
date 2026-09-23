class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.13.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.0/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "c1b8320d35883fe96c413616ad3e69c5026759800d9287d050a573550c3b5ab9"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.0/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "9061eef9cdfbe10aa658700e59eeb92a19baf2f40d20eb2f828208eb5f7b8fc1"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
