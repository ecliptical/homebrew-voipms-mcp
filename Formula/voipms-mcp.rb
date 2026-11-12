class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.18.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.18.1/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "8ed2a091d488c5867f04886716b472ab5b98c62485cec0049ca6df3a8c20900c"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.18.1/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "ce77006de8f266c308f705f0fb61fe9257d3a5d7eb9a59dc83eb2cd579006a3e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.18.1/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bcef793ece0827c37aded72f2afdcd421fd8863d838f2d487e77bce9d700f63a"
    end
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.18.1/voipms-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9308a57ab1c7340783a6f2483d4bee081b0e00282eaf406c6b5222f0392e9680"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
