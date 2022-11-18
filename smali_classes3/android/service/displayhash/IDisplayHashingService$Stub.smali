.class public abstract Landroid/service/displayhash/IDisplayHashingService$Stub;
.super Landroid/os/Binder;
.source "IDisplayHashingService.java"

# interfaces
.implements Landroid/service/displayhash/IDisplayHashingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/displayhash/IDisplayHashingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/displayhash/IDisplayHashingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_generateDisplayHash:I = 0x1

.field static final blacklist TRANSACTION_getDisplayHashAlgorithms:I = 0x3

.field static final blacklist TRANSACTION_getIntervalBetweenRequestsMillis:I = 0x4

.field static final blacklist TRANSACTION_verifyDisplayHash:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "android.service.displayhash.IDisplayHashingService"

    invoke-virtual {p0, p0, v0}, Landroid/service/displayhash/IDisplayHashingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/displayhash/IDisplayHashingService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    const-string v0, "android.service.displayhash.IDisplayHashingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/displayhash/IDisplayHashingService;

    if-eqz v1, :cond_1

    .line 83
    move-object v1, v0

    check-cast v1, Landroid/service/displayhash/IDisplayHashingService;

    return-object v1

    .line 85
    :cond_1
    new-instance v1, Landroid/service/displayhash/IDisplayHashingService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/displayhash/IDisplayHashingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 94
    packed-switch p0, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 110
    :pswitch_0
    const-string v0, "getIntervalBetweenRequestsMillis"

    return-object v0

    .line 106
    :pswitch_1
    const-string v0, "getDisplayHashAlgorithms"

    return-object v0

    .line 102
    :pswitch_2
    const-string/jumbo v0, "verifyDisplayHash"

    return-object v0

    .line 98
    :pswitch_3
    const-string v0, "generateDisplayHash"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 89
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 299
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 121
    invoke-static {p1}, Landroid/service/displayhash/IDisplayHashingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.service.displayhash.IDisplayHashingService"

    .line 126
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 127
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 137
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 185
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 133
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v10

    .line 178
    :pswitch_1
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    .line 179
    .local v0, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {v6, v0}, Landroid/service/displayhash/IDisplayHashingService$Stub;->getIntervalBetweenRequestsMillis(Landroid/os/RemoteCallback;)V

    .line 181
    goto :goto_0

    .line 170
    .end local v0    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_2
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    .line 171
    .restart local v0    # "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {v6, v0}, Landroid/service/displayhash/IDisplayHashingService$Stub;->getDisplayHashAlgorithms(Landroid/os/RemoteCallback;)V

    .line 173
    goto :goto_0

    .line 158
    .end local v0    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 160
    .local v0, "_arg0":[B
    sget-object v1, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/displayhash/DisplayHash;

    .line 162
    .local v1, "_arg1":Landroid/view/displayhash/DisplayHash;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 163
    .local v2, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/displayhash/IDisplayHashingService$Stub;->verifyDisplayHash([BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V

    .line 165
    goto :goto_0

    .line 142
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":Landroid/view/displayhash/DisplayHash;
    .end local v2    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 144
    .local v12, "_arg0":[B
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/HardwareBuffer;

    .line 146
    .local v13, "_arg1":Landroid/hardware/HardwareBuffer;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/graphics/Rect;

    .line 148
    .local v14, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 150
    .local v15, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/RemoteCallback;

    .line 151
    .local v16, "_arg4":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/displayhash/IDisplayHashingService$Stub;->generateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 153
    nop

    .line 188
    .end local v12    # "_arg0":[B
    .end local v13    # "_arg1":Landroid/hardware/HardwareBuffer;
    .end local v14    # "_arg2":Landroid/graphics/Rect;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Landroid/os/RemoteCallback;
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
