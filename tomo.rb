class Tomo < Formula
  desc "A Python-based Pomodoro timer"
  homepage "https://github.com/Moragoh/TerminalPomodoro"
  url "https://github.com/Moragoh/TerminalPomodoro/releases/download/v1.1.0/tomo-v1.1.0.tar.gz"
  sha256 "3d5801925e9ec01edfd61d0990207c082a8ebea924273c7681a0e5bab8f3c8a6"
  license "MIT"

  depends_on "python@3.11"

  def install
    libexec.install "pomodoro.py", "terminal.py", "timer.py", "time_utils.py",
                    "config.py", "settings.py", "statistics.py", "ascii_art.py"
    (bin/"tomo").write <<~EOS
      #!/bin/bash
      cd "#{libexec}" && exec "#{Formula["python@3.11"].opt_bin}/python3.11" pomodoro.py "$@"
    EOS
  end

  test do
    assert_predicate bin/"tomo", :exist?
  end
end
