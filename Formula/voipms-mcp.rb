class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.14.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.14.2/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "044837418aab7db4cd2eb9b0745c0688368be5adc316ab195a46c372571246e1"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.14.2/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "ddb42055b28a0c54c6547af75f4e8a9453e7458c778e01ea9b4e1d5b6bcb933f"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
