class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.17.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.2/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "71007b6e0f56bdfd9c20a084a659d1bfe7809d658eb696696dc85e2727ccb127"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.2/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "c6f59d67a6a7969ee144546eb23093e6d7ae6789b5c3124c54625ea03044ced0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.2/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c574012844e688d12d4b4d5bb4b8e4bba5b28a5da558403c01f2e3565296938"
    end
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.17.2/voipms-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05f00439ced2f916b44d947f5988fbec45bae6c90a2d7995bdee6e837ced5f93"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
