cask 'crashplan-proe' do
  version '4.5.2'
  sha256 '21fcf556dc06f06ff81956901414d71c1a168974567189aadd934ede8b1f6d91'

  url "https://download.code42.com/installs/mac/install/CrashPlanPROe/CrashPlanPROe_#{version}_Mac.dmg"
  name 'CrashPlan ProE'
  homepage 'https://www.crashplan.com/'

  auto_updates true

  pkg 'Install CrashPlan PROe.pkg'

  uninstall launchctl: 'com.backup42.desktop',
            pkgutil:   'com.crashplan.app.pkg',
            script:    {
                         executable: 'Uninstall.app/Contents/Resources/uninstall.sh',
                         sudo:       true,
                       }
end
