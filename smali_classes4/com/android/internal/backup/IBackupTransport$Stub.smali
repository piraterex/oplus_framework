.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final greylist-max-o TRANSACTION_abortFullRestore:I = 0x1a

.field static final greylist-max-o TRANSACTION_cancelFullBackup:I = 0x16

.field static final greylist-max-o TRANSACTION_checkFullBackupSize:I = 0x14

.field static final greylist-max-o TRANSACTION_clearBackupData:I = 0xa

.field static final greylist-max-o TRANSACTION_configurationIntent:I = 0x2

.field static final greylist-max-o TRANSACTION_currentDestinationString:I = 0x3

.field static final greylist-max-o TRANSACTION_dataManagementIntent:I = 0x4

.field static final blacklist TRANSACTION_dataManagementIntentLabel:I = 0x5

.field static final greylist-max-o TRANSACTION_finishBackup:I = 0xb

.field static final greylist-max-o TRANSACTION_finishRestore:I = 0x11

.field static final greylist-max-o TRANSACTION_getAvailableRestoreSets:I = 0xc

.field static final greylist-max-o TRANSACTION_getBackupQuota:I = 0x18

.field static final greylist-max-o TRANSACTION_getCurrentRestoreSet:I = 0xd

.field static final greylist-max-o TRANSACTION_getNextFullRestoreDataChunk:I = 0x19

.field static final greylist-max-o TRANSACTION_getRestoreData:I = 0x10

.field static final greylist-max-o TRANSACTION_getTransportFlags:I = 0x1b

.field static final greylist-max-o TRANSACTION_initializeDevice:I = 0x8

.field static final greylist-max-o TRANSACTION_isAppEligibleForBackup:I = 0x17

.field static final greylist-max-o TRANSACTION_name:I = 0x1

.field static final greylist-max-o TRANSACTION_nextRestorePackage:I = 0xf

.field static final greylist-max-o TRANSACTION_performBackup:I = 0x9

.field static final greylist-max-o TRANSACTION_performFullBackup:I = 0x13

.field static final greylist-max-o TRANSACTION_requestBackupTime:I = 0x7

.field static final greylist-max-o TRANSACTION_requestFullBackupTime:I = 0x12

.field static final greylist-max-o TRANSACTION_sendBackupData:I = 0x15

.field static final greylist-max-o TRANSACTION_startRestore:I = 0xe

.field static final greylist-max-o TRANSACTION_transportDirName:I = 0x6


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 415
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 416
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 424
    if-nez p0, :cond_0

    .line 425
    const/4 v0, 0x0

    return-object v0

    .line 427
    :cond_0
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 428
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_1

    .line 429
    move-object v1, v0

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;

    return-object v1

    .line 431
    :cond_1
    new-instance v1, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 440
    packed-switch p0, :pswitch_data_0

    .line 552
    const/4 v0, 0x0

    return-object v0

    .line 548
    :pswitch_0
    const-string v0, "getTransportFlags"

    return-object v0

    .line 544
    :pswitch_1
    const-string v0, "abortFullRestore"

    return-object v0

    .line 540
    :pswitch_2
    const-string v0, "getNextFullRestoreDataChunk"

    return-object v0

    .line 536
    :pswitch_3
    const-string v0, "getBackupQuota"

    return-object v0

    .line 532
    :pswitch_4
    const-string v0, "isAppEligibleForBackup"

    return-object v0

    .line 528
    :pswitch_5
    const-string v0, "cancelFullBackup"

    return-object v0

    .line 524
    :pswitch_6
    const-string/jumbo v0, "sendBackupData"

    return-object v0

    .line 520
    :pswitch_7
    const-string v0, "checkFullBackupSize"

    return-object v0

    .line 516
    :pswitch_8
    const-string/jumbo v0, "performFullBackup"

    return-object v0

    .line 512
    :pswitch_9
    const-string/jumbo v0, "requestFullBackupTime"

    return-object v0

    .line 508
    :pswitch_a
    const-string v0, "finishRestore"

    return-object v0

    .line 504
    :pswitch_b
    const-string v0, "getRestoreData"

    return-object v0

    .line 500
    :pswitch_c
    const-string/jumbo v0, "nextRestorePackage"

    return-object v0

    .line 496
    :pswitch_d
    const-string/jumbo v0, "startRestore"

    return-object v0

    .line 492
    :pswitch_e
    const-string v0, "getCurrentRestoreSet"

    return-object v0

    .line 488
    :pswitch_f
    const-string v0, "getAvailableRestoreSets"

    return-object v0

    .line 484
    :pswitch_10
    const-string v0, "finishBackup"

    return-object v0

    .line 480
    :pswitch_11
    const-string v0, "clearBackupData"

    return-object v0

    .line 476
    :pswitch_12
    const-string/jumbo v0, "performBackup"

    return-object v0

    .line 472
    :pswitch_13
    const-string v0, "initializeDevice"

    return-object v0

    .line 468
    :pswitch_14
    const-string/jumbo v0, "requestBackupTime"

    return-object v0

    .line 464
    :pswitch_15
    const-string/jumbo v0, "transportDirName"

    return-object v0

    .line 460
    :pswitch_16
    const-string v0, "dataManagementIntentLabel"

    return-object v0

    .line 456
    :pswitch_17
    const-string v0, "dataManagementIntent"

    return-object v0

    .line 452
    :pswitch_18
    const-string v0, "currentDestinationString"

    return-object v0

    .line 448
    :pswitch_19
    const-string v0, "configurationIntent"

    return-object v0

    .line 444
    :pswitch_1a
    const-string/jumbo v0, "name"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 435
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1535
    const/16 v0, 0x1a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 559
    invoke-static {p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    const-string v0, "com.android.internal.backup.IBackupTransport"

    .line 564
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 565
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 575
    packed-switch p1, :pswitch_data_1

    .line 829
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 571
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    return v1

    .line 822
    :pswitch_1
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 823
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->getTransportFlags(Lcom/android/internal/infra/AndroidFuture;)V

    .line 825
    goto/16 :goto_0

    .line 814
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    .line 815
    .local v2, "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->abortFullRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 817
    goto/16 :goto_0

    .line 804
    .end local v2    # "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_3
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 806
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    .line 807
    .local v3, "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 809
    goto/16 :goto_0

    .line 792
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 796
    .local v3, "_arg1":Z
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 797
    .local v4, "_arg2":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->getBackupQuota(Ljava/lang/String;ZLcom/android/internal/infra/AndroidFuture;)V

    .line 799
    goto/16 :goto_0

    .line 780
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :pswitch_5
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 782
    .local v2, "_arg0":Landroid/content/pm/PackageInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 784
    .restart local v3    # "_arg1":Z
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 785
    .local v4, "_arg2":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;ZLcom/android/internal/infra/AndroidFuture;)V

    .line 787
    goto/16 :goto_0

    .line 772
    .end local v2    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    .line 773
    .local v2, "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 775
    goto/16 :goto_0

    .line 762
    .end local v2    # "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 764
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    .line 765
    .local v3, "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->sendBackupData(ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 767
    goto/16 :goto_0

    .line 752
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 754
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v4

    .line 755
    .local v4, "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->checkFullBackupSize(JLcom/android/internal/backup/ITransportStatusCallback;)V

    .line 757
    goto/16 :goto_0

    .line 738
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_9
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 740
    .local v2, "_arg0":Landroid/content/pm/PackageInfo;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 742
    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 744
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v5

    .line 745
    .local v5, "_arg3":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 747
    goto/16 :goto_0

    .line 730
    .end local v2    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_a
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 731
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestFullBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    .line 733
    goto/16 :goto_0

    .line 722
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    .line 723
    .local v2, "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 725
    goto/16 :goto_0

    .line 712
    .end local v2    # "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_c
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 714
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    .line 715
    .local v3, "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 717
    goto/16 :goto_0

    .line 704
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_d
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 705
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/backup/RestoreDescription;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V

    .line 707
    goto/16 :goto_0

    .line 692
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/backup/RestoreDescription;>;"
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 694
    .local v2, "_arg0":J
    sget-object v4, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/PackageInfo;

    .line 696
    .local v4, "_arg1":[Landroid/content/pm/PackageInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v5

    .line 697
    .local v5, "_arg2":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 699
    goto/16 :goto_0

    .line 684
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":[Landroid/content/pm/PackageInfo;
    .end local v5    # "_arg2":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_f
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 685
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet(Lcom/android/internal/infra/AndroidFuture;)V

    .line 687
    goto/16 :goto_0

    .line 676
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :pswitch_10
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 677
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/app/backup/RestoreSet;>;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets(Lcom/android/internal/infra/AndroidFuture;)V

    .line 679
    goto/16 :goto_0

    .line 668
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/app/backup/RestoreSet;>;>;"
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    .line 669
    .local v2, "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 671
    goto/16 :goto_0

    .line 658
    .end local v2    # "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_12
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 660
    .local v2, "_arg0":Landroid/content/pm/PackageInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    .line 661
    .restart local v3    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 663
    goto/16 :goto_0

    .line 644
    .end local v2    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_arg1":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_13
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 646
    .restart local v2    # "_arg0":Landroid/content/pm/PackageInfo;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 648
    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 650
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v5

    .line 651
    .local v5, "_arg3":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 653
    goto/16 :goto_0

    .line 636
    .end local v2    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    .line 637
    .local v2, "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 639
    goto :goto_0

    .line 628
    .end local v2    # "_arg0":Lcom/android/internal/backup/ITransportStatusCallback;
    :pswitch_15
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 629
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    .line 631
    goto :goto_0

    .line 620
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :pswitch_16
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 621
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName(Lcom/android/internal/infra/AndroidFuture;)V

    .line 623
    goto :goto_0

    .line 612
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :pswitch_17
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 613
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntentLabel(Lcom/android/internal/infra/AndroidFuture;)V

    .line 615
    goto :goto_0

    .line 604
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    :pswitch_18
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 605
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntent(Lcom/android/internal/infra/AndroidFuture;)V

    .line 607
    goto :goto_0

    .line 596
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    :pswitch_19
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 597
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->currentDestinationString(Lcom/android/internal/infra/AndroidFuture;)V

    .line 599
    goto :goto_0

    .line 588
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :pswitch_1a
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 589
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent(Lcom/android/internal/infra/AndroidFuture;)V

    .line 591
    goto :goto_0

    .line 580
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    :pswitch_1b
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 581
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->name(Lcom/android/internal/infra/AndroidFuture;)V

    .line 583
    nop

    .line 832
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
