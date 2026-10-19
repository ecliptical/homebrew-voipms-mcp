class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.15.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.15.0/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "91bd5dda95ded4c216bca68cd8439caa32a1ff5ae1498cf53a00c254c8bd405f"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.15.0/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "af8b785ea28cd53ee60530039bb3b0115704382a2666ea2f75d4870a7b6d1536"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
