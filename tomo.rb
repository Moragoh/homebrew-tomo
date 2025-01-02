class Tomo < Formula
  desc "A Python-based Pomodoro timer"
  homepage "https://github.com/Moragoh/TerminalPomodoro" 
  url "https://github.com/Moragoh/TerminalPomodoro/releases/download/v1.0.0/tomo-v1.0.0.tar.gz" 
  sha256 "ce8d79d5b6d08826a023f29d0b6cfbb10bd27121d457613911722328a5e04c2a" # Replace with SHA256 of your tarball
  license "MIT" # Or your license

  depends_on "python@3.11" # Python dependency

  def install
    bin.install "pomodoro.py" => "tomo" # Install as `tomo`
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/tomo --help")
  end
end
