class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.11.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.11.0/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "6831f6896a7f4ea5aaf3912478d6d600231180e09f2ee91f9bec897227cecf01"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.11.0/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "c636ef4e3ce27312549230c3b5c972903151a8f711222aacee83c89830c8c327"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
