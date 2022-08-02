# Illinux 

Illinux is my pitiful attempt at creating my own flavor of linux from scratch. Calling it **Ill**inux to emphasize the fact that this is a makeshift OS that, while stable, performs below industry standards.
  
If not already understood: this OS is not meant to be used seriously, it is simply a learning project for me. But hey, what do you know, this could turn into something substantial, right?

## Prerequisites

This project relies on QEMU as a CPU emulator, which you can install [here](https://www.qemu.org/download/).  
The emulator I selected (`qemu-system-x86_64`) simulates the following peripherals:
- i440FX host PCI bridge and PIIX3 PCI to ISA bridge
- Cirrus CLGD 5446 PCI VGA card or dummy VGA card with Bochs VESA extensions (hardware level, including all non standard modes).
- PS/2 mouse and keyboard
- 2 PCI IDE interfaces with hard disk and CD-ROM support
- Floppy disk
- PCI and ISA network adapters
- Serial ports
- IPMI BMC, either and internal or external one
- Creative SoundBlaster 16 sound card
- ENSONIQ AudioPCI ES1370 sound card
- Intel 82801AA AC97 Audio compatible sound card
- Intel HD Audio Controller and HDA codec
- Adlib (OPL2) - Yamaha YM3812 compatible chip
- Gravis Ultrasound GF1 sound card
- CS4231A compatible sound card
- PC speaker
- PCI UHCI, OHCI, EHCI or XHCI USB controller and a virtual USB-1.1 hub.



## Usage
To startup the system, use the command
```
make boot
```

## License
*PLACEHOLDER**
