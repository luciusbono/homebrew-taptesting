cask 'crashplan-proe' do
  version '4.5.2'
  sha256 '855e63d87a156754e0e03f2cd274d204a36682fb541809aa1400613e367234a0'

  url "https://download.code42.com/installs/mac/install/CrashPlanPROe/CrashPlanPROe_#{version}_Mac.dmg"
  name 'CrashPlan ProE'
  homepage 'https://www.crashplan.com/'

  auto_updates true

  pkg 'Install CrashPlan.pkg'

  uninstall launchctl: 'com.backup42.desktop',
            pkgutil:   'com.crashplan.app.pkg',
            script:    {
                         executable: 'Uninstall.app/Contents/Resources/uninstall.sh',
                         sudo:       true,
                       }
end
