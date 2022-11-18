.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final greylist-max-o TRANSACTION_addInterfaceToLocalNetwork:I = 0x34

.field static final greylist-max-o TRANSACTION_addRoute:I = 0xd

.field static final greylist-max-o TRANSACTION_allowProtect:I = 0x32

.field static final greylist-max-o TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final greylist-max-o TRANSACTION_denyProtect:I = 0x33

.field static final greylist-max-o TRANSACTION_disableIpv6:I = 0xa

.field static final greylist-max-o TRANSACTION_disableNat:I = 0x1d

.field static final greylist-max-o TRANSACTION_enableIpv6:I = 0xb

.field static final greylist-max-o TRANSACTION_enableNat:I = 0x1c

.field static final greylist-max-o TRANSACTION_getDnsForwarders:I = 0x19

.field static final greylist-max-o TRANSACTION_getInterfaceConfig:I = 0x4

.field static final greylist-max-o TRANSACTION_getIpForwardingEnabled:I = 0x10

.field static final greylist-max-o TRANSACTION_getNetworkStatsTethering:I = 0x21

.field static final greylist-max-o TRANSACTION_isBandwidthControlEnabled:I = 0x2b

.field static final greylist-max-o TRANSACTION_isFirewallEnabled:I = 0x2d

.field static final greylist-max-o TRANSACTION_isNetworkRestricted:I = 0x37

.field static final greylist-max-o TRANSACTION_isTetheringStarted:I = 0x15

.field static final greylist-max-o TRANSACTION_listInterfaces:I = 0x3

.field static final greylist-max-o TRANSACTION_listTetheredInterfaces:I = 0x18

.field static final greylist-max-o TRANSACTION_registerObserver:I = 0x1

.field static final greylist-max-o TRANSACTION_registerTetheringStatsProvider:I = 0x1e

.field static final greylist-max-o TRANSACTION_removeInterfaceAlert:I = 0x25

.field static final greylist-max-o TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x35

.field static final greylist-max-o TRANSACTION_removeInterfaceQuota:I = 0x23

.field static final greylist-max-o TRANSACTION_removeRoute:I = 0xe

.field static final greylist-max-o TRANSACTION_removeRoutesFromLocalNetwork:I = 0x36

.field static final greylist-max-o TRANSACTION_setDataSaverModeEnabled:I = 0x29

.field static final greylist-max-o TRANSACTION_setFirewallChainEnabled:I = 0x31

.field static final greylist-max-o TRANSACTION_setFirewallEnabled:I = 0x2c

.field static final greylist-max-o TRANSACTION_setFirewallInterfaceRule:I = 0x2e

.field static final greylist-max-o TRANSACTION_setFirewallUidRule:I = 0x2f

.field static final greylist-max-o TRANSACTION_setFirewallUidRules:I = 0x30

.field static final greylist-max-o TRANSACTION_setGlobalAlert:I = 0x26

.field static final greylist-max-o TRANSACTION_setIPv6AddrGenMode:I = 0xc

.field static final greylist-max-o TRANSACTION_setInterfaceAlert:I = 0x24

.field static final greylist-max-o TRANSACTION_setInterfaceConfig:I = 0x5

.field static final greylist-max-o TRANSACTION_setInterfaceDown:I = 0x7

.field static final greylist-max-o TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final greylist-max-o TRANSACTION_setInterfaceQuota:I = 0x22

.field static final greylist-max-o TRANSACTION_setInterfaceUp:I = 0x8

.field static final greylist-max-o TRANSACTION_setIpForwardingEnabled:I = 0x11

.field static final greylist-max-o TRANSACTION_setUidCleartextNetworkPolicy:I = 0x2a

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkAllowlist:I = 0x28

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkDenylist:I = 0x27

.field static final greylist-max-o TRANSACTION_shutdown:I = 0xf

.field static final greylist-max-o TRANSACTION_startInterfaceForwarding:I = 0x1a

.field static final greylist-max-o TRANSACTION_startTethering:I = 0x12

.field static final blacklist TRANSACTION_startTetheringWithConfiguration:I = 0x13

.field static final greylist-max-o TRANSACTION_stopInterfaceForwarding:I = 0x1b

.field static final greylist-max-o TRANSACTION_stopTethering:I = 0x14

.field static final greylist-max-o TRANSACTION_tetherInterface:I = 0x16

.field static final greylist-max-o TRANSACTION_tetherLimitReached:I = 0x20

.field static final greylist-max-o TRANSACTION_unregisterObserver:I = 0x2

.field static final greylist-max-o TRANSACTION_unregisterTetheringStatsProvider:I = 0x1f

.field static final greylist-max-o TRANSACTION_untetherInterface:I = 0x17


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 281
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 289
    if-nez p0, :cond_0

    .line 290
    const/4 v0, 0x0

    return-object v0

    .line 292
    :cond_0
    const-string v0, "android.os.INetworkManagementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 293
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    .line 294
    move-object v1, v0

    check-cast v1, Landroid/os/INetworkManagementService;

    return-object v1

    .line 296
    :cond_1
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 305
    packed-switch p0, :pswitch_data_0

    .line 529
    const/4 v0, 0x0

    return-object v0

    .line 525
    :pswitch_0
    const-string/jumbo v0, "isNetworkRestricted"

    return-object v0

    .line 521
    :pswitch_1
    const-string/jumbo v0, "removeRoutesFromLocalNetwork"

    return-object v0

    .line 517
    :pswitch_2
    const-string/jumbo v0, "removeInterfaceFromLocalNetwork"

    return-object v0

    .line 513
    :pswitch_3
    const-string v0, "addInterfaceToLocalNetwork"

    return-object v0

    .line 509
    :pswitch_4
    const-string v0, "denyProtect"

    return-object v0

    .line 505
    :pswitch_5
    const-string v0, "allowProtect"

    return-object v0

    .line 501
    :pswitch_6
    const-string/jumbo v0, "setFirewallChainEnabled"

    return-object v0

    .line 497
    :pswitch_7
    const-string/jumbo v0, "setFirewallUidRules"

    return-object v0

    .line 493
    :pswitch_8
    const-string/jumbo v0, "setFirewallUidRule"

    return-object v0

    .line 489
    :pswitch_9
    const-string/jumbo v0, "setFirewallInterfaceRule"

    return-object v0

    .line 485
    :pswitch_a
    const-string/jumbo v0, "isFirewallEnabled"

    return-object v0

    .line 481
    :pswitch_b
    const-string/jumbo v0, "setFirewallEnabled"

    return-object v0

    .line 477
    :pswitch_c
    const-string/jumbo v0, "isBandwidthControlEnabled"

    return-object v0

    .line 473
    :pswitch_d
    const-string/jumbo v0, "setUidCleartextNetworkPolicy"

    return-object v0

    .line 469
    :pswitch_e
    const-string/jumbo v0, "setDataSaverModeEnabled"

    return-object v0

    .line 465
    :pswitch_f
    const-string/jumbo v0, "setUidOnMeteredNetworkAllowlist"

    return-object v0

    .line 461
    :pswitch_10
    const-string/jumbo v0, "setUidOnMeteredNetworkDenylist"

    return-object v0

    .line 457
    :pswitch_11
    const-string/jumbo v0, "setGlobalAlert"

    return-object v0

    .line 453
    :pswitch_12
    const-string/jumbo v0, "removeInterfaceAlert"

    return-object v0

    .line 449
    :pswitch_13
    const-string/jumbo v0, "setInterfaceAlert"

    return-object v0

    .line 445
    :pswitch_14
    const-string/jumbo v0, "removeInterfaceQuota"

    return-object v0

    .line 441
    :pswitch_15
    const-string/jumbo v0, "setInterfaceQuota"

    return-object v0

    .line 437
    :pswitch_16
    const-string v0, "getNetworkStatsTethering"

    return-object v0

    .line 433
    :pswitch_17
    const-string/jumbo v0, "tetherLimitReached"

    return-object v0

    .line 429
    :pswitch_18
    const-string/jumbo v0, "unregisterTetheringStatsProvider"

    return-object v0

    .line 425
    :pswitch_19
    const-string/jumbo v0, "registerTetheringStatsProvider"

    return-object v0

    .line 421
    :pswitch_1a
    const-string v0, "disableNat"

    return-object v0

    .line 417
    :pswitch_1b
    const-string v0, "enableNat"

    return-object v0

    .line 413
    :pswitch_1c
    const-string/jumbo v0, "stopInterfaceForwarding"

    return-object v0

    .line 409
    :pswitch_1d
    const-string/jumbo v0, "startInterfaceForwarding"

    return-object v0

    .line 405
    :pswitch_1e
    const-string v0, "getDnsForwarders"

    return-object v0

    .line 401
    :pswitch_1f
    const-string/jumbo v0, "listTetheredInterfaces"

    return-object v0

    .line 397
    :pswitch_20
    const-string/jumbo v0, "untetherInterface"

    return-object v0

    .line 393
    :pswitch_21
    const-string/jumbo v0, "tetherInterface"

    return-object v0

    .line 389
    :pswitch_22
    const-string/jumbo v0, "isTetheringStarted"

    return-object v0

    .line 385
    :pswitch_23
    const-string/jumbo v0, "stopTethering"

    return-object v0

    .line 381
    :pswitch_24
    const-string/jumbo v0, "startTetheringWithConfiguration"

    return-object v0

    .line 377
    :pswitch_25
    const-string/jumbo v0, "startTethering"

    return-object v0

    .line 373
    :pswitch_26
    const-string/jumbo v0, "setIpForwardingEnabled"

    return-object v0

    .line 369
    :pswitch_27
    const-string v0, "getIpForwardingEnabled"

    return-object v0

    .line 365
    :pswitch_28
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 361
    :pswitch_29
    const-string/jumbo v0, "removeRoute"

    return-object v0

    .line 357
    :pswitch_2a
    const-string v0, "addRoute"

    return-object v0

    .line 353
    :pswitch_2b
    const-string/jumbo v0, "setIPv6AddrGenMode"

    return-object v0

    .line 349
    :pswitch_2c
    const-string v0, "enableIpv6"

    return-object v0

    .line 345
    :pswitch_2d
    const-string v0, "disableIpv6"

    return-object v0

    .line 341
    :pswitch_2e
    const-string/jumbo v0, "setInterfaceIpv6PrivacyExtensions"

    return-object v0

    .line 337
    :pswitch_2f
    const-string/jumbo v0, "setInterfaceUp"

    return-object v0

    .line 333
    :pswitch_30
    const-string/jumbo v0, "setInterfaceDown"

    return-object v0

    .line 329
    :pswitch_31
    const-string v0, "clearInterfaceAddresses"

    return-object v0

    .line 325
    :pswitch_32
    const-string/jumbo v0, "setInterfaceConfig"

    return-object v0

    .line 321
    :pswitch_33
    const-string v0, "getInterfaceConfig"

    return-object v0

    .line 317
    :pswitch_34
    const-string/jumbo v0, "listInterfaces"

    return-object v0

    .line 313
    :pswitch_35
    const-string/jumbo v0, "unregisterObserver"

    return-object v0

    .line 309
    :pswitch_36
    const-string/jumbo v0, "registerObserver"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 300
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2119
    const/16 v0, 0x36

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 536
    invoke-static {p1}, Landroid/os/INetworkManagementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    const-string v0, "android.os.INetworkManagementService"

    .line 541
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 542
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 552
    packed-switch p1, :pswitch_data_1

    .line 1082
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 548
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    return v1

    .line 1073
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1074
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1075
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->isNetworkRestricted(I)Z

    move-result v3

    .line 1076
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1078
    goto/16 :goto_0

    .line 1063
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2
    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1064
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v3

    .line 1066
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    goto/16 :goto_0

    .line 1054
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    goto/16 :goto_0

    .line 1043
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1045
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1046
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1048
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    goto/16 :goto_0

    .line 1034
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1035
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1036
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    .line 1037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    goto/16 :goto_0

    .line 1025
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1026
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    .line 1028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    goto/16 :goto_0

    .line 1014
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1016
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1017
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    goto/16 :goto_0

    .line 1001
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1003
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1005
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 1006
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    .line 1008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    goto/16 :goto_0

    .line 988
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 990
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 992
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 993
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    .line 995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    goto/16 :goto_0

    .line 977
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 979
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 980
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    goto/16 :goto_0

    .line 969
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_b
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v2

    .line 970
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 972
    goto/16 :goto_0

    .line 961
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 962
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_0

    .line 953
    .end local v2    # "_arg0":Z
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v2

    .line 954
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 956
    goto/16 :goto_0

    .line 943
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 945
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 946
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 947
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    .line 948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    goto/16 :goto_0

    .line 933
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 934
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 935
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled(Z)Z

    move-result v3

    .line 936
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 938
    goto/16 :goto_0

    .line 922
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 924
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 925
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    goto/16 :goto_0

    .line 911
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 913
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 914
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    goto/16 :goto_0

    .line 902
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 903
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    goto/16 :goto_0

    .line 893
    .end local v2    # "_arg0":J
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    goto/16 :goto_0

    .line 882
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 884
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 885
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    goto/16 :goto_0

    .line 873
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 874
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    goto/16 :goto_0

    .line 862
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 864
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 865
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    goto/16 :goto_0

    .line 852
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 853
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 855
    .local v3, "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 857
    goto/16 :goto_0

    .line 843
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/net/NetworkStats;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v2

    .line 844
    .local v2, "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_0

    .line 834
    .end local v2    # "_arg0":Landroid/net/ITetheringStatsProvider;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v2

    .line 835
    .restart local v2    # "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    goto/16 :goto_0

    .line 823
    .end local v2    # "_arg0":Landroid/net/ITetheringStatsProvider;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v2

    .line 825
    .restart local v2    # "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 826
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    goto/16 :goto_0

    .line 812
    .end local v2    # "_arg0":Landroid/net/ITetheringStatsProvider;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 814
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 815
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    goto/16 :goto_0

    .line 801
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 803
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 804
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    goto/16 :goto_0

    .line 790
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 792
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 793
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_0

    .line 779
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 781
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 782
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    goto/16 :goto_0

    .line 771
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 774
    goto/16 :goto_0

    .line 764
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_20
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v2

    .line 765
    .restart local v2    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 767
    goto/16 :goto_0

    .line 756
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    goto/16 :goto_0

    .line 747
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 748
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    goto/16 :goto_0

    .line 739
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v2

    .line 740
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 742
    goto/16 :goto_0

    .line 733
    .end local v2    # "_result":Z
    :pswitch_24
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    goto/16 :goto_0

    .line 723
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 725
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 727
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->startTetheringWithConfiguration(Z[Ljava/lang/String;)V

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    goto/16 :goto_0

    .line 714
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    goto/16 :goto_0

    .line 705
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 706
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_0

    .line 697
    .end local v2    # "_arg0":Z
    :pswitch_28
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v2

    .line 698
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 700
    goto/16 :goto_0

    .line 691
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    goto/16 :goto_0

    .line 681
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 683
    .local v2, "_arg0":I
    sget-object v3, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 684
    .local v3, "_arg1":Landroid/net/RouteInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    .line 686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    goto/16 :goto_0

    .line 670
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/RouteInfo;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 672
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 673
    .restart local v3    # "_arg1":Landroid/net/RouteInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    goto/16 :goto_0

    .line 659
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/RouteInfo;
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 662
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    goto/16 :goto_0

    .line 650
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 651
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    goto/16 :goto_0

    .line 641
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 642
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_0

    .line 630
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 632
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 633
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_0

    .line 621
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 622
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_0

    .line 612
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 613
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    goto :goto_0

    .line 603
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 604
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto :goto_0

    .line 592
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 594
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/InterfaceConfiguration;

    .line 595
    .local v3, "_arg1":Landroid/net/InterfaceConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    goto :goto_0

    .line 582
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/InterfaceConfiguration;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 583
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    .line 585
    .local v3, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 587
    goto :goto_0

    .line 574
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/InterfaceConfiguration;
    :pswitch_35
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 577
    goto :goto_0

    .line 566
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v2

    .line 567
    .local v2, "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    goto :goto_0

    .line 557
    .end local v2    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v2

    .line 558
    .restart local v2    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    nop

    .line 1085
    .end local v2    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
