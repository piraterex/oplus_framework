.class public Lcom/android/internal/usb/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V
    .locals 6
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 54
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "manufacturer"

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 55
    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "model"

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 56
    nop

    .line 57
    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    .line 56
    const-string v3, "description"

    const-wide v4, 0x10900000003L

    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 58
    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    const-wide v4, 0x10900000004L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 59
    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uri"

    const-wide v4, 0x10900000005L

    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 60
    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "serial"

    const-wide v4, 0x10900000006L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 63
    return-void
.end method

.method private static blacklist writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V
    .locals 8
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "configuration"    # Landroid/hardware/usb/UsbConfiguration;

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 93
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result v2

    const-string v3, "id"

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 94
    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 95
    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getAttributes()I

    move-result v2

    const-string v3, "attributes"

    const-wide v4, 0x10d00000003L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 96
    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getMaxPower()I

    move-result v2

    const-string/jumbo v3, "max_power"

    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 98
    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v2

    .line 99
    .local v2, "numInterfaces":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 100
    const-wide v4, 0x20b00000005L

    .line 101
    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v6

    .line 100
    const-string v7, "interfaces"

    invoke-static {p0, v7, v4, v5, v6}, Lcom/android/internal/usb/DumpUtils;->writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 104
    return-void
.end method

.method private static blacklist writeContaminantPresenceStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .locals 1
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "contaminantPresenceStatus"    # I

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 204
    :cond_0
    nop

    .line 205
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->contaminantPresenceStatusToString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 207
    :goto_0
    return-void
.end method

.method private static blacklist writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .locals 1
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "dataRole"    # I

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 197
    :goto_0
    return-void
.end method

.method public static blacklist writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V
    .locals 8
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 69
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 70
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    const-string/jumbo v3, "vendor_id"

    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 71
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    const-string/jumbo v3, "product_id"

    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 72
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    const-string v3, "class"

    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 73
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v2

    const-string/jumbo v3, "subclass"

    const-wide v4, 0x10500000005L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 74
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v2

    const-string/jumbo v3, "protocol"

    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 75
    nop

    .line 76
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string/jumbo v3, "manufacturer_name"

    const-wide v4, 0x10900000007L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 77
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "product_name"

    const-wide v4, 0x10900000008L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 78
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    const-wide v4, 0x10900000009L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 79
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "serial_number"

    const-wide v4, 0x1090000000aL

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 81
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v2

    .line 82
    .local v2, "numConfigurations":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 83
    const-wide v4, 0x20b0000000bL

    .line 84
    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v6

    .line 83
    const-string v7, "configurations"

    invoke-static {p0, v7, v4, v5, v6}, Lcom/android/internal/usb/DumpUtils;->writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 88
    return-void
.end method

.method private static blacklist writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V
    .locals 6
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 129
    .local v0, "token":J
    nop

    .line 130
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v2

    .line 129
    const-string v3, "endpoint_number"

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 131
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const-string v3, "direction"

    const-wide v4, 0x10e00000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 132
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v2

    const-string v3, "address"

    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 133
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    const-string/jumbo v3, "type"

    const-wide v4, 0x10e00000004L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 134
    nop

    .line 135
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v2

    .line 134
    const-string v3, "attributes"

    const-wide v4, 0x10d00000005L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 136
    nop

    .line 137
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v2

    .line 136
    const-string/jumbo v3, "max_packet_size"

    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 138
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v2

    const-string v3, "interval"

    const-wide v4, 0x10500000007L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 141
    return-void
.end method

.method private static blacklist writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V
    .locals 8
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "iface"    # Landroid/hardware/usb/UsbInterface;

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 110
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v2

    const-string v3, "id"

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 111
    nop

    .line 112
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v2

    .line 111
    const-string v3, "alternate_settings"

    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 113
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    const-wide v4, 0x10900000003L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 114
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const-string v3, "class"

    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 115
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v2

    const-string/jumbo v3, "subclass"

    const-wide v4, 0x10500000005L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 116
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v2

    const-string/jumbo v3, "protocol"

    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 118
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    .line 119
    .local v2, "numEndpoints":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 120
    const-wide v4, 0x20b00000007L

    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    const-string v7, "endpoints"

    invoke-static {p0, v7, v4, v5, v6}, Lcom/android/internal/usb/DumpUtils;->writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 123
    return-void
.end method

.method public static blacklist writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V
    .locals 8
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "port"    # Landroid/hardware/usb/UsbPort;

    .line 145
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 147
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 149
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    .line 150
    .local v2, "mode":I
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    const-wide v4, 0x20e00000002L

    const-string/jumbo v6, "supported_modes"

    if-eqz v3, :cond_5

    .line 151
    if-nez v2, :cond_0

    .line 152
    const/4 v3, 0x0

    invoke-virtual {p0, v6, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_1

    .line 154
    :cond_0
    and-int/lit8 v3, v2, 0x3

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1

    .line 155
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 157
    :cond_1
    and-int/lit8 v3, v2, 0x2

    const/4 v7, 0x2

    if-ne v3, v7, :cond_2

    .line 158
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 159
    :cond_2
    and-int/lit8 v3, v2, 0x1

    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    .line 160
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 164
    :cond_3
    :goto_0
    and-int/lit8 v3, v2, 0x4

    const/4 v7, 0x4

    if-ne v3, v7, :cond_4

    .line 165
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 169
    :cond_4
    and-int/lit8 v3, v2, 0x8

    const/16 v7, 0x8

    if-ne v3, v7, :cond_6

    .line 170
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_1

    .line 175
    :cond_5
    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 178
    :cond_6
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 179
    return-void
.end method

.method public static blacklist writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V
    .locals 15
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "status"    # Landroid/hardware/usb/UsbPortStatus;

    .line 211
    move-object v0, p0

    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    .line 213
    .local v1, "token":J
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v3

    const-string v4, "connected"

    const-wide v5, 0x10800000001L

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    const-string v4, "current_mode"

    const-wide v5, 0x10e00000002L

    if-eqz v3, :cond_0

    .line 216
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v3

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 218
    :cond_0
    nop

    .line 219
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 222
    :goto_0
    const-wide v3, 0x10e00000003L

    .line 223
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v7

    .line 222
    const-string/jumbo v8, "power_role"

    invoke-static {p0, v8, v3, v4, v7}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 224
    const-wide v3, 0x10e00000004L

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v7

    const-string v9, "data_role"

    invoke-static {p0, v9, v3, v4, v7}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 226
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v3

    .line 227
    .local v3, "undumpedCombinations":I
    :goto_1
    if-eqz v3, :cond_1

    .line 228
    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    .line 229
    .local v4, "index":I
    const/4 v7, 0x1

    shl-int/2addr v7, v4

    not-int v7, v7

    and-int/2addr v3, v7

    .line 231
    div-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0x0

    .line 233
    .local v7, "powerRole":I
    rem-int/lit8 v10, v4, 0x3

    .line 235
    .local v10, "dataRole":I
    const-wide v11, 0x20b00000005L

    const-string/jumbo v13, "role_combinations"

    invoke-virtual {p0, v13, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 237
    .local v11, "roleCombinationToken":J
    const-wide v13, 0x10e00000001L

    invoke-static {p0, v8, v13, v14, v7}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 239
    invoke-static {p0, v9, v5, v6, v10}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 241
    invoke-virtual {p0, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 242
    .end local v4    # "index":I
    .end local v7    # "powerRole":I
    .end local v10    # "dataRole":I
    .end local v11    # "roleCombinationToken":J
    goto :goto_1

    .line 244
    :cond_1
    const-wide v4, 0x10e00000006L

    .line 246
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v6

    .line 244
    const-string v7, "contaminant_presence_status"

    invoke-static {p0, v7, v4, v5, v6}, Lcom/android/internal/usb/DumpUtils;->writeContaminantPresenceStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 247
    const-wide v4, 0x10900000007L

    .line 248
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v6

    invoke-static {v6}, Landroid/hardware/usb/UsbPort;->usbDataStatusToString(I)Ljava/lang/String;

    move-result-object v6

    .line 247
    const-string/jumbo v7, "usb_data_status"

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 249
    const-wide v4, 0x10800000008L

    .line 250
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v6

    .line 249
    const-string/jumbo v7, "is_power_transfer_limited"

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 251
    const-wide v4, 0x10900000009L

    .line 252
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v6

    invoke-static {v6}, Landroid/hardware/usb/UsbPort;->powerBrickConnectionStatusToString(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    const-string/jumbo v7, "usb_power_brick_status"

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 253
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 254
    return-void
.end method

.method private static blacklist writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .locals 1
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "powerRole"    # I

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 188
    :goto_0
    return-void
.end method
