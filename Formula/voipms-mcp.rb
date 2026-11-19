class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.20.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.20.0/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "fb480c27a2aeed2c4db5c42a9a3e177d6b2ae619c7b925407c513059539dbab6"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.20.0/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "b5d69657ad4254278222c081cb568a8d96c745a40f4e6cabed385a41a6b21871"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.20.0/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "002513e39b0a08054a16f34e8b81608407a51c887834e1cb0e78480471da9129"
    end
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.20.0/voipms-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7d5647e42557828a401107e2dd278a66ef0a5241b6d986c4682db3bdb9f3c002"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
