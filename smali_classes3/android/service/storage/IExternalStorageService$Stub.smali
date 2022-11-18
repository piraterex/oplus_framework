.class public abstract Landroid/service/storage/IExternalStorageService$Stub;
.super Landroid/os/Binder;
.source "IExternalStorageService.java"

# interfaces
.implements Landroid/service/storage/IExternalStorageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/storage/IExternalStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/storage/IExternalStorageService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_endSession:I = 0x2

.field static final blacklist TRANSACTION_freeCache:I = 0x4

.field static final blacklist TRANSACTION_notifyAnrDelayStarted:I = 0x5

.field static final blacklist TRANSACTION_notifyVolumeStateChanged:I = 0x3

.field static final blacklist TRANSACTION_startSession:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.service.storage.IExternalStorageService"

    invoke-virtual {p0, p0, v0}, Landroid/service/storage/IExternalStorageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/storage/IExternalStorageService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "android.service.storage.IExternalStorageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/storage/IExternalStorageService;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/service/storage/IExternalStorageService;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Landroid/service/storage/IExternalStorageService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/storage/IExternalStorageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_0
    const-string/jumbo v0, "notifyAnrDelayStarted"

    return-object v0

    .line 77
    :pswitch_1
    const-string v0, "freeCache"

    return-object v0

    .line 73
    :pswitch_2
    const-string/jumbo v0, "notifyVolumeStateChanged"

    return-object v0

    .line 69
    :pswitch_3
    const-string v0, "endSession"

    return-object v0

    .line 65
    :pswitch_4
    const-string/jumbo v0, "startSession"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 283
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Landroid/service/storage/IExternalStorageService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "android.service.storage.IExternalStorageService"

    .line 97
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 98
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 108
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 180
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 104
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v11

    .line 167
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/service/storage/IExternalStorageService$Stub;->notifyAnrDelayStarted(Ljava/lang/String;III)V

    .line 176
    goto/16 :goto_0

    .line 153
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 157
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 159
    .local v14, "_arg2":J
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/RemoteCallback;

    .line 160
    .local v16, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/storage/IExternalStorageService$Stub;->freeCache(Ljava/lang/String;Ljava/lang/String;JLandroid/os/RemoteCallback;)V

    .line 162
    goto :goto_0

    .line 141
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 145
    .local v1, "_arg1":Landroid/os/storage/StorageVolume;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 146
    .local v2, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {v7, v0, v1, v2}, Landroid/service/storage/IExternalStorageService$Stub;->notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V

    .line 148
    goto :goto_0

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/storage/StorageVolume;
    .end local v2    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 134
    .local v1, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {v7, v0, v1}, Landroid/service/storage/IExternalStorageService$Stub;->endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 136
    goto :goto_0

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 115
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 117
    .local v14, "_arg1":I
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/ParcelFileDescriptor;

    .line 119
    .local v15, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 121
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 123
    .local v17, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/RemoteCallback;

    .line 124
    .local v18, "_arg5":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/service/storage/IExternalStorageService$Stub;->startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 126
    nop

    .line 183
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/os/RemoteCallback;
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
