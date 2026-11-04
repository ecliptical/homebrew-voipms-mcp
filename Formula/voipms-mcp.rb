class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.17.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.1/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "c276dd0fd0b6f368758bbc736d08ae7b3f256c77fcdaf0dc8b145dc0bdea9b96"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.1/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "11df325135521bccfdf3f57928b62dc84a1afc35bc8021b06c35f786d64a6297"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.1/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c952dd2cc970653bf018c2aa2a9a703aaed53847d2f0278651825cbbd43860ac"
    end
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.1/voipms-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6116eff7b9bd34e2e7b92e91e46c0eb848bc0fb6c2626a6a80edfc552197e8f4"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
