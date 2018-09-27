cask 'asmake' do
  version :latest
  sha256 :no_check

  url "https://github.com/lifepillar/ASMake/archive/#{version}.zip"
  appcast 'https://github.com/lifepillar/ASMake/releases.atom'
  name 'ASMake'
  homepage 'https://github.com/lifepillar/ASMake'

  installer script: {
  	executable: "#{staged_path}/asmake"
  	args: 		['install'],
  	sudo: 		false,
  }

  uninstaller script: {
  	executable: "#{staged_path}/asmake"
  	args: 		['uninstall'],
  	sudo: 		false,
  }
end
