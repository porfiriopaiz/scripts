#!/bin/bash

echo "---------------------------------------------------"
echo "  Wi-Fi Access Point (AP) Configuration Script"
echo "---------------------------------------------------"

# 1. Check for available wireless network interfaces
echo "Scanning for available wireless network interfaces..."
wireless_interfaces=$(nmcli device status | grep wifi | awk '{print $1}')

if [ -z "$wireless_interfaces" ]; then
    echo "No wireless interfaces found. Please ensure your Wi-Fi adapter is present and recognized by the system."
    exit 1
fi

echo "Available wireless interfaces:"
select iface in $wireless_interfaces; do
    if [ -n "$iface" ]; then
        echo "You selected: $iface"
        break
    else
        echo "Invalid selection. Please choose a number from the list."
    fi
done

# 2. Get network name (connection name) from user
read -p "Enter a name for the new Wi-Fi network connection (e.g., MyHomeAP): " con_name
if [ -z "$con_name" ]; then
    echo "Network connection name cannot be empty. Exiting."
    exit 1
fi

# 3. Get SSID from user
read -p "Enter the SSID (network name others will see) for the Wi-Fi network: " ssid
if [ -z "$ssid" ]; then
    echo "SSID cannot be empty. Exiting."
    exit 1
fi

# 4. Get password from user
read -s -p "Enter the WPA2-PSK password for the Wi-Fi network (min 8 characters): " password
echo "" # New line after password input
if [ -z "$password" ] || [ ${#password} -lt 8 ]; then
    echo "Password cannot be empty and must be at least 8 characters long. Exiting."
    exit 1
fi

echo ""
echo "Configuration Summary:"
echo "----------------------"
echo "Interface:      $iface"
echo "Connection Name: $con_name"
echo "SSID:           $ssid"
echo "Password:       (hidden for security)"
echo "----------------------"
read -p "Do you want to proceed with creating this Access Point? (y/N): " confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
    echo "Configuration cancelled. Exiting."
    exit 0
fi

echo "Creating and configuring Wi-Fi Access Point..."

# Create the connection
nmcli connection add type wifi ifname "$iface" con-name "$con_name" autoconnect yes ssid "$ssid"
if [ $? -ne 0 ]; then
    echo "Error creating connection. Please check nmcli output above."
    exit 1
fi

# Modify the connection to be an Access Point
nmcli connection modify "$con_name" 802-11-wireless.mode ap 802-11-wireless.band bg ipv4.method shared
if [ $? -ne 0 ]; then
    echo "Error modifying connection to AP mode. Please check nmcli output above."
    nmcli connection delete "$con_name" # Clean up
    exit 1
fi

# Set WPA-PSK security
nmcli connection modify "$con_name" wifi-sec.key-mgmt wpa-psk
if [ $? -ne 0 ]; then
    echo "Error setting key management. Please check nmcli output above."
    nmcli connection delete "$con_name" # Clean up
    exit 1
fi

# Set the password
nmcli connection modify "$con_name" wifi-sec.psk "$password"
if [ $? -ne 0 ]; then
    echo "Error setting password. Please check nmcli output above."
    nmcli connection delete "$con_name" # Clean up
    exit 1
fi

# Bring up the connection
echo "Activating the Wi-Fi Access Point..."
nmcli connection up "$con_name"
if [ $? -ne 0 ]; then
    echo "Error activating the AP. Please check nmcli output above."
    echo "You might need to manually activate it with: nmcli connection up \"$con_name\""
    exit 1
fi

echo ""
echo "---------------------------------------------------"
echo "  Wi-Fi Access Point '$ssid' created and activated!"
echo "  Devices should now be able to connect to it using"
echo "  the password you provided."
echo "---------------------------------------------------"
