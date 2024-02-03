# Clothing Bag for QBCore Framework

The Clothing Bag is a custom FiveM resource designed for servers using the QBCore framework. It allows players to access a portable clothing menu through an in-game item, enabling on-the-go outfit changes.

## Features

- **Portable Clothing Access**: Players can change their outfits anywhere by using the clothing bag item.
- **Whitelisted Jobs**: Restricts usage to specific jobs, enhancing roleplay elements for jobs like police, EMS, or any custom jobs.
- **Easy Integration**: Seamlessly integrates with QBCore's existing inventory and clothing systems.

## Installation

1. **Download the Resource**: Clone this repository or download the ZIP file and extract it into your server's resources folder.

2. **Add to Server.cfg**: Ensure the resource is started after `qb-core` and any dependencies in your `server.cfg`:

    ```plaintext
    ensure qb-core
    ensure brave-clothingbag
    ```

3. **Import Items**: Add the `clothing_bag` item to your QBCore's `shared.lua` or equivalent item database file. See the Setup section for details.

4. **Restart the Server**: After adding the resource and configuring the item, restart your server or use the `refresh` and `ensure` commands for the changes to take effect.

## Setup

### Adding the Clothing Bag Item

Add the following entry to your QBCore item database, typically found in `shared.lua`:

```lua
['clothing_bag'] = {["name"] = "clothing_bag", ["label"] = "Clothing Bag", ["weight"] = 500, ["type"] = "item", ["image"] = "clothing_bag.png", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["description"] = "A bag to change your clothes on the go."}


