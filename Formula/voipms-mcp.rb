class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.17.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.3/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "6737cdd0afd12ac114a831dcc81076a3b35841cba7d5caa5ab7f76de4d946d0f"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.3/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "ac74cb75d217825f7b1133fb6610a3401274cd726a4efc0e0efcf3383172b324"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.3/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4ba4d3089a25779836e28bd545ceae1e1b2a03edf043f62a1209be0855702b82"
    end
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.3/voipms-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c25456b3b2c9c241d751950ae7ce15fa6f4b80c7135d6a219022f0331fb52d46"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
