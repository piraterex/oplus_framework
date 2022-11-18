.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final greylist-max-o TRANSACTION_acknowledgeFullBackupOrRestore:I = 0x1a

.field static final blacklist TRANSACTION_acknowledgeFullBackupOrRestoreForUser:I = 0x19

.field static final greylist-max-o TRANSACTION_adbBackup:I = 0x16

.field static final greylist-max-o TRANSACTION_adbRestore:I = 0x18

.field static final greylist-max-o TRANSACTION_agentConnected:I = 0x7

.field static final blacklist TRANSACTION_agentConnectedForUser:I = 0x6

.field static final greylist-max-o TRANSACTION_agentDisconnected:I = 0x9

.field static final blacklist TRANSACTION_agentDisconnectedForUser:I = 0x8

.field static final greylist-max-o TRANSACTION_backupNow:I = 0x15

.field static final blacklist TRANSACTION_backupNowForUser:I = 0x14

.field static final blacklist TRANSACTION_beginRestoreSessionForUser:I = 0x2d

.field static final greylist-max-o TRANSACTION_cancelBackups:I = 0x39

.field static final blacklist TRANSACTION_cancelBackupsForUser:I = 0x38

.field static final greylist-max-o TRANSACTION_clearBackupData:I = 0x4

.field static final blacklist TRANSACTION_clearBackupDataForUser:I = 0x3

.field static final greylist-max-o TRANSACTION_dataChanged:I = 0x2

.field static final blacklist TRANSACTION_dataChangedForUser:I = 0x1

.field static final blacklist TRANSACTION_excludeKeysFromRestore:I = 0x3c

.field static final blacklist TRANSACTION_filterAppsEligibleForBackupForUser:I = 0x35

.field static final blacklist TRANSACTION_fullTransportBackupForUser:I = 0x17

.field static final blacklist TRANSACTION_getAvailableRestoreTokenForUser:I = 0x33

.field static final greylist-max-o TRANSACTION_getConfigurationIntent:I = 0x27

.field static final blacklist TRANSACTION_getConfigurationIntentForUser:I = 0x26

.field static final greylist-max-o TRANSACTION_getCurrentTransport:I = 0x1d

.field static final blacklist TRANSACTION_getCurrentTransportComponentForUser:I = 0x1e

.field static final blacklist TRANSACTION_getCurrentTransportForUser:I = 0x1c

.field static final greylist-max-o TRANSACTION_getDataManagementIntent:I = 0x2b

.field static final blacklist TRANSACTION_getDataManagementIntentForUser:I = 0x2a

.field static final blacklist TRANSACTION_getDataManagementLabelForUser:I = 0x2c

.field static final greylist-max-o TRANSACTION_getDestinationString:I = 0x29

.field static final blacklist TRANSACTION_getDestinationStringForUser:I = 0x28

.field static final greylist-max-o TRANSACTION_getTransportWhitelist:I = 0x22

.field static final blacklist TRANSACTION_getUserForAncestralSerialNumber:I = 0x3a

.field static final greylist-max-o TRANSACTION_hasBackupPassword:I = 0x13

.field static final blacklist TRANSACTION_initializeTransportsForUser:I = 0x5

.field static final blacklist TRANSACTION_isAppEligibleForBackupForUser:I = 0x34

.field static final greylist-max-o TRANSACTION_isBackupEnabled:I = 0x11

.field static final blacklist TRANSACTION_isBackupEnabledForUser:I = 0x10

.field static final greylist-max-o TRANSACTION_isBackupServiceActive:I = 0x31

.field static final blacklist TRANSACTION_isUserReadyForBackup:I = 0x32

.field static final blacklist TRANSACTION_listAllTransportComponentsForUser:I = 0x21

.field static final greylist-max-o TRANSACTION_listAllTransports:I = 0x20

.field static final blacklist TRANSACTION_listAllTransportsForUser:I = 0x1f

.field static final greylist-max-o TRANSACTION_opComplete:I = 0x2f

.field static final blacklist TRANSACTION_opCompleteForUser:I = 0x2e

.field static final greylist-max-o TRANSACTION_requestBackup:I = 0x37

.field static final blacklist TRANSACTION_requestBackupForUser:I = 0x36

.field static final greylist-max-o TRANSACTION_restoreAtInstall:I = 0xb

.field static final blacklist TRANSACTION_restoreAtInstallForUser:I = 0xa

.field static final greylist-max-o TRANSACTION_selectBackupTransport:I = 0x24

.field static final blacklist TRANSACTION_selectBackupTransportAsyncForUser:I = 0x25

.field static final blacklist TRANSACTION_selectBackupTransportForUser:I = 0x23

.field static final blacklist TRANSACTION_setAncestralSerialNumber:I = 0x3b

.field static final greylist-max-o TRANSACTION_setAutoRestore:I = 0xf

.field static final blacklist TRANSACTION_setAutoRestoreForUser:I = 0xe

.field static final greylist-max-o TRANSACTION_setBackupEnabled:I = 0xd

.field static final blacklist TRANSACTION_setBackupEnabledForUser:I = 0xc

.field static final greylist-max-o TRANSACTION_setBackupPassword:I = 0x12

.field static final greylist-max-o TRANSACTION_setBackupServiceActive:I = 0x30

.field static final blacklist TRANSACTION_updateTransportAttributesForUser:I = 0x1b


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 756
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 757
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 765
    if-nez p0, :cond_0

    .line 766
    const/4 v0, 0x0

    return-object v0

    .line 768
    :cond_0
    const-string v0, "android.app.backup.IBackupManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 769
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    .line 770
    move-object v1, v0

    check-cast v1, Landroid/app/backup/IBackupManager;

    return-object v1

    .line 772
    :cond_1
    new-instance v1, Landroid/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 781
    packed-switch p0, :pswitch_data_0

    .line 1025
    const/4 v0, 0x0

    return-object v0

    .line 1021
    :pswitch_0
    const-string v0, "excludeKeysFromRestore"

    return-object v0

    .line 1017
    :pswitch_1
    const-string/jumbo v0, "setAncestralSerialNumber"

    return-object v0

    .line 1013
    :pswitch_2
    const-string v0, "getUserForAncestralSerialNumber"

    return-object v0

    .line 1009
    :pswitch_3
    const-string v0, "cancelBackups"

    return-object v0

    .line 1005
    :pswitch_4
    const-string v0, "cancelBackupsForUser"

    return-object v0

    .line 1001
    :pswitch_5
    const-string/jumbo v0, "requestBackup"

    return-object v0

    .line 997
    :pswitch_6
    const-string/jumbo v0, "requestBackupForUser"

    return-object v0

    .line 993
    :pswitch_7
    const-string v0, "filterAppsEligibleForBackupForUser"

    return-object v0

    .line 989
    :pswitch_8
    const-string v0, "isAppEligibleForBackupForUser"

    return-object v0

    .line 985
    :pswitch_9
    const-string v0, "getAvailableRestoreTokenForUser"

    return-object v0

    .line 981
    :pswitch_a
    const-string v0, "isUserReadyForBackup"

    return-object v0

    .line 977
    :pswitch_b
    const-string v0, "isBackupServiceActive"

    return-object v0

    .line 973
    :pswitch_c
    const-string/jumbo v0, "setBackupServiceActive"

    return-object v0

    .line 969
    :pswitch_d
    const-string/jumbo v0, "opComplete"

    return-object v0

    .line 965
    :pswitch_e
    const-string/jumbo v0, "opCompleteForUser"

    return-object v0

    .line 961
    :pswitch_f
    const-string v0, "beginRestoreSessionForUser"

    return-object v0

    .line 957
    :pswitch_10
    const-string v0, "getDataManagementLabelForUser"

    return-object v0

    .line 953
    :pswitch_11
    const-string v0, "getDataManagementIntent"

    return-object v0

    .line 949
    :pswitch_12
    const-string v0, "getDataManagementIntentForUser"

    return-object v0

    .line 945
    :pswitch_13
    const-string v0, "getDestinationString"

    return-object v0

    .line 941
    :pswitch_14
    const-string v0, "getDestinationStringForUser"

    return-object v0

    .line 937
    :pswitch_15
    const-string v0, "getConfigurationIntent"

    return-object v0

    .line 933
    :pswitch_16
    const-string v0, "getConfigurationIntentForUser"

    return-object v0

    .line 929
    :pswitch_17
    const-string/jumbo v0, "selectBackupTransportAsyncForUser"

    return-object v0

    .line 925
    :pswitch_18
    const-string/jumbo v0, "selectBackupTransport"

    return-object v0

    .line 921
    :pswitch_19
    const-string/jumbo v0, "selectBackupTransportForUser"

    return-object v0

    .line 917
    :pswitch_1a
    const-string v0, "getTransportWhitelist"

    return-object v0

    .line 913
    :pswitch_1b
    const-string v0, "listAllTransportComponentsForUser"

    return-object v0

    .line 909
    :pswitch_1c
    const-string v0, "listAllTransports"

    return-object v0

    .line 905
    :pswitch_1d
    const-string v0, "listAllTransportsForUser"

    return-object v0

    .line 901
    :pswitch_1e
    const-string v0, "getCurrentTransportComponentForUser"

    return-object v0

    .line 897
    :pswitch_1f
    const-string v0, "getCurrentTransport"

    return-object v0

    .line 893
    :pswitch_20
    const-string v0, "getCurrentTransportForUser"

    return-object v0

    .line 889
    :pswitch_21
    const-string/jumbo v0, "updateTransportAttributesForUser"

    return-object v0

    .line 885
    :pswitch_22
    const-string v0, "acknowledgeFullBackupOrRestore"

    return-object v0

    .line 881
    :pswitch_23
    const-string v0, "acknowledgeFullBackupOrRestoreForUser"

    return-object v0

    .line 877
    :pswitch_24
    const-string v0, "adbRestore"

    return-object v0

    .line 873
    :pswitch_25
    const-string v0, "fullTransportBackupForUser"

    return-object v0

    .line 869
    :pswitch_26
    const-string v0, "adbBackup"

    return-object v0

    .line 865
    :pswitch_27
    const-string v0, "backupNow"

    return-object v0

    .line 861
    :pswitch_28
    const-string v0, "backupNowForUser"

    return-object v0

    .line 857
    :pswitch_29
    const-string v0, "hasBackupPassword"

    return-object v0

    .line 853
    :pswitch_2a
    const-string/jumbo v0, "setBackupPassword"

    return-object v0

    .line 849
    :pswitch_2b
    const-string v0, "isBackupEnabled"

    return-object v0

    .line 845
    :pswitch_2c
    const-string v0, "isBackupEnabledForUser"

    return-object v0

    .line 841
    :pswitch_2d
    const-string/jumbo v0, "setAutoRestore"

    return-object v0

    .line 837
    :pswitch_2e
    const-string/jumbo v0, "setAutoRestoreForUser"

    return-object v0

    .line 833
    :pswitch_2f
    const-string/jumbo v0, "setBackupEnabled"

    return-object v0

    .line 829
    :pswitch_30
    const-string/jumbo v0, "setBackupEnabledForUser"

    return-object v0

    .line 825
    :pswitch_31
    const-string/jumbo v0, "restoreAtInstall"

    return-object v0

    .line 821
    :pswitch_32
    const-string/jumbo v0, "restoreAtInstallForUser"

    return-object v0

    .line 817
    :pswitch_33
    const-string v0, "agentDisconnected"

    return-object v0

    .line 813
    :pswitch_34
    const-string v0, "agentDisconnectedForUser"

    return-object v0

    .line 809
    :pswitch_35
    const-string v0, "agentConnected"

    return-object v0

    .line 805
    :pswitch_36
    const-string v0, "agentConnectedForUser"

    return-object v0

    .line 801
    :pswitch_37
    const-string v0, "initializeTransportsForUser"

    return-object v0

    .line 797
    :pswitch_38
    const-string v0, "clearBackupData"

    return-object v0

    .line 793
    :pswitch_39
    const-string v0, "clearBackupDataForUser"

    return-object v0

    .line 789
    :pswitch_3a
    const-string v0, "dataChanged"

    return-object v0

    .line 785
    :pswitch_3b
    const-string v0, "dataChangedForUser"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 776
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3395
    const/16 v0, 0x3b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 1032
    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1036
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.app.backup.IBackupManager"

    .line 1037
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 1038
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    :cond_0
    packed-switch v13, :pswitch_data_0

    .line 1048
    packed-switch v13, :pswitch_data_1

    .line 1740
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1044
    :pswitch_0
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1045
    return v10

    .line 1730
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1733
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1734
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V

    .line 1735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1736
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1721
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1722
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1723
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAncestralSerialNumber(J)V

    .line 1724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1725
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1711
    .end local v0    # "_arg0":J
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1712
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1713
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v2

    .line 1714
    .local v2, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1715
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1716
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1704
    .end local v0    # "_arg0":J
    .end local v2    # "_result":Landroid/os/UserHandle;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->cancelBackups()V

    .line 1705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1706
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1696
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1697
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1698
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->cancelBackupsForUser(I)V

    .line 1699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1700
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1680
    .end local v0    # "_arg0":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1682
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v1

    .line 1684
    .local v1, "_arg1":Landroid/app/backup/IBackupObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 1686
    .local v2, "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1687
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1688
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v4

    .line 1689
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1690
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1662
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/backup/IBackupObserver;
    .end local v2    # "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1664
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 1666
    .local v7, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v8

    .line 1668
    .local v8, "_arg2":Landroid/app/backup/IBackupObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v9

    .line 1670
    .local v9, "_arg3":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1671
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1672
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    .line 1673
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1675
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1650
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":[Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/app/backup/IBackupObserver;
    .end local v9    # "_arg3":Landroid/app/backup/IBackupManagerMonitor;
    .end local v16    # "_arg4":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1652
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1653
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1654
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1655
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1657
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1638
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1640
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1641
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1642
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isAppEligibleForBackupForUser(ILjava/lang/String;)Z

    move-result v2

    .line 1643
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1645
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1626
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1628
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1629
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1630
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreTokenForUser(ILjava/lang/String;)J

    move-result-wide v2

    .line 1631
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    invoke-virtual {v15, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1633
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1616
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":J
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1617
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1618
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->isUserReadyForBackup(I)Z

    move-result v1

    .line 1619
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1621
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1606
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1607
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1608
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    move-result v1

    .line 1609
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1611
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1595
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1597
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1598
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1599
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    .line 1600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1584
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1586
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1587
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1588
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    .line 1589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1571
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1573
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1575
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1576
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1577
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->opCompleteForUser(IIJ)V

    .line 1578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1557
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1559
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1562
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1563
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v3

    .line 1564
    .local v3, "_result":Landroid/app/backup/IRestoreSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1565
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1566
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1539
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/backup/IRestoreSession;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1541
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1542
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1543
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1544
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    if-eqz v2, :cond_1

    .line 1546
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1547
    invoke-static {v2, v15, v10}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1550
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1552
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1529
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1530
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1531
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1532
    .local v1, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1534
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1517
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/Intent;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1519
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1520
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1521
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1522
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1524
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1507
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/Intent;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1508
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1509
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1510
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1512
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1495
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1497
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1498
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1499
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1500
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1502
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1485
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1486
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1487
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1488
    .local v1, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1490
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1473
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/Intent;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1475
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1476
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1477
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1478
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1480
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1460
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/Intent;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1462
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1464
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/ISelectBackupTransportCallback;

    move-result-object v2

    .line 1465
    .local v2, "_arg2":Landroid/app/backup/ISelectBackupTransportCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1466
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    .line 1467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1450
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Landroid/app/backup/ISelectBackupTransportCallback;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1452
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1453
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1455
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1438
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1440
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1441
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1442
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1443
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1445
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1430
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 1431
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1433
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1421
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1422
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1423
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v1

    .line 1424
    .local v1, "_result":[Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1426
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1413
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/content/ComponentName;
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v0

    .line 1414
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1416
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1404
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1405
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1406
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object v1

    .line 1407
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1408
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1409
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1394
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1395
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1396
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 1397
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1399
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1386
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    .line 1387
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1389
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1377
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1378
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1379
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1382
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1356
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1358
    .local v8, "_arg0":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/ComponentName;

    .line 1360
    .local v9, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1362
    .local v16, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 1364
    .local v17, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1366
    .local v18, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 1368
    .local v19, "_arg5":Landroid/content/Intent;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/CharSequence;

    .line 1369
    .local v20, "_arg6":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1370
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/backup/IBackupManager$Stub;->updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 1371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1339
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Landroid/content/ComponentName;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Landroid/content/Intent;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Landroid/content/Intent;
    .end local v20    # "_arg6":Ljava/lang/CharSequence;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1341
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1343
    .local v7, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1345
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1347
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v16

    .line 1348
    .local v16, "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1349
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 1350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1320
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1322
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1324
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1326
    .local v9, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1328
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1330
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v18

    .line 1331
    .local v18, "_arg5":Landroid/app/backup/IFullBackupRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1332
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 1333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1309
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Z
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/app/backup/IFullBackupRestoreObserver;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1311
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1312
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1313
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->adbRestore(ILandroid/os/ParcelFileDescriptor;)V

    .line 1314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1298
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1300
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1301
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1302
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->fullTransportBackupForUser(I[Ljava/lang/String;)V

    .line 1303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_0

    .line 1269
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1271
    .local v16, "_arg0":I
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/ParcelFileDescriptor;

    .line 1273
    .local v17, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 1275
    .local v18, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 1277
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 1279
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 1281
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 1283
    .local v22, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 1285
    .local v23, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 1287
    .local v24, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 1289
    .local v25, "_arg9":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v26

    .line 1290
    .local v26, "_arg10":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1291
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v27, v10

    move/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/app/backup/IBackupManager$Stub;->adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    goto/16 :goto_0

    .line 1262
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "_arg2":Z
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":Z
    .end local v23    # "_arg7":Z
    .end local v24    # "_arg8":Z
    .end local v25    # "_arg9":Z
    .end local v26    # "_arg10":[Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    goto/16 :goto_0

    .line 1254
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1255
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->backupNowForUser(I)V

    .line 1257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    goto/16 :goto_0

    .line 1246
    .end local v0    # "_arg0":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v0

    .line 1247
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1249
    goto/16 :goto_0

    .line 1235
    .end local v0    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1238
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1240
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1242
    goto/16 :goto_0

    .line 1227
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v0

    .line 1228
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1230
    goto/16 :goto_0

    .line 1218
    .end local v0    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1219
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1220
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabledForUser(I)Z

    move-result v1

    .line 1221
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1223
    goto/16 :goto_0

    .line 1209
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1210
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    goto/16 :goto_0

    .line 1198
    .end local v0    # "_arg0":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2f
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1200
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1201
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1202
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestoreForUser(IZ)V

    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    goto/16 :goto_0

    .line 1189
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1190
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    goto/16 :goto_0

    .line 1178
    .end local v0    # "_arg0":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_31
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1180
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1181
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1182
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabledForUser(IZ)V

    .line 1183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    goto/16 :goto_0

    .line 1167
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_32
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1170
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    goto/16 :goto_0

    .line 1154
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_33
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1156
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1158
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1159
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1160
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstallForUser(ILjava/lang/String;I)V

    .line 1161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    goto/16 :goto_0

    .line 1145
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_34
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1147
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    goto/16 :goto_0

    .line 1134
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_35
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1136
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1138
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnectedForUser(ILjava/lang/String;)V

    .line 1139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    goto/16 :goto_0

    .line 1123
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_36
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1126
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    goto/16 :goto_0

    .line 1110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_37
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1112
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1115
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1116
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    goto/16 :goto_0

    .line 1097
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_38
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1099
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1101
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v2

    .line 1102
    .local v2, "_arg2":Landroid/app/backup/IBackupObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    goto :goto_0

    .line 1086
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/app/backup/IBackupObserver;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_39
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1089
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    goto :goto_0

    .line 1073
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3a
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1075
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1077
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1078
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    goto :goto_0

    .line 1064
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3b
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    goto :goto_0

    .line 1053
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3c
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1055
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1056
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->dataChangedForUser(ILjava/lang/String;)V

    .line 1058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    nop

    .line 1743
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :goto_0
    return v27

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
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
