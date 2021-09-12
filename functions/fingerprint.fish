function fingerprint --description 'Create fingerprint from public key'
    ssh-keygen -l -E md5 -f $argv
end
