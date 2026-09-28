class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.13.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.2/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "239d469562fe5e30f3032b4fc00177a4aa33d5b3680b46e4edb30731537f2604"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.2/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "d37c7dbf45fedadb4c1005dd121aa537db56183f1bf69e4c9dfcfc0835f03c10"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
