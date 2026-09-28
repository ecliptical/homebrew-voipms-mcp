class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.13.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.4/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "0b9f42d7b4c8d7a2b50f9bc8d99c7ac2c5f2a5b6ecab8d5fcc0172178b4f5a65"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.4/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "282760df4df0eeb1dd9530a0f6676539f52d7bef9d6b4e21d6a4bebcbc29b164"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
