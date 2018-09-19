Facter.add(:is_puppetmaster) do
	setcode do
		distid = Facter.value(:hostname)
		case distid
			when 'pupmaster'
				true
			else
				false
			end
		end
	end