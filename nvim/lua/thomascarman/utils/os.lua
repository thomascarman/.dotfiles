local BinaryFormat = package.cpath:match("%p[\\|/]?%p(%a+)")

local osName
if BinaryFormat == 'dll' then
    function osName()
        return 'Windows'
    end
elseif BinaryFormat == 'so' then
    function osName()
        return 'Linux'
    end
elseif BinaryFormat == 'dylib' then
    function osName()
        return 'MacOS'
    end
end

return osName
