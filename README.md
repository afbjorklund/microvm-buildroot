# firecracker-buildroot

Some files for making a custom `vmlinux` and `rootfs.ext4` with buildroot.

For now it is just using the default kernel config and standard packages.

![graph size](graph-size.png)

## firecracker

```shell
sudo firectl --kernel=output/images/vmlinux \
             --root-drive=output/images/rootfs.ext4 \
             --kernel-opts="ro console=ttyS0 reboot=k panic=1 pci=off nomodules"
```

Note: we need to remove the `noapic` parameter, is only valid for the AWS kernel

`[    0.000000] Linux version 6.12.33 ...`
`[    0.735274] VFS: Mounted root (ext4 filesystem) ...`
`[    0.769825] Run /sbin/init as init process`
