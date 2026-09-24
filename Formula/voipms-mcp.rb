class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.13.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.1/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "30e8efce569e4ad8f64b981a17a653237d73c82edbfecdd0cb06e5f907c70ba6"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.1/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "938abd110ace768d68e1ebc331c58be36f53be082f83ab3859b8adb8f116f45c"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
