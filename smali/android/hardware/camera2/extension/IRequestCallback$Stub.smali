.class public abstract Landroid/hardware/camera2/extension/IRequestCallback$Stub;
.super Landroid/os/Binder;
.source "IRequestCallback.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IRequestCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCaptureBufferLost:I = 0x5

.field static final blacklist TRANSACTION_onCaptureCompleted:I = 0x3

.field static final blacklist TRANSACTION_onCaptureFailed:I = 0x4

.field static final blacklist TRANSACTION_onCaptureProgressed:I = 0x2

.field static final blacklist TRANSACTION_onCaptureSequenceAborted:I = 0x7

.field static final blacklist TRANSACTION_onCaptureSequenceCompleted:I = 0x6

.field static final blacklist TRANSACTION_onCaptureStarted:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.hardware.camera2.extension.IRequestCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    const-string v0, "android.hardware.camera2.extension.IRequestCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/extension/IRequestCallback;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IRequestCallback;

    return-object v1

    .line 58
    :cond_1
    new-instance v1, Landroid/hardware/camera2/extension/IRequestCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IRequestCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 95
    :pswitch_0
    const-string/jumbo v0, "onCaptureSequenceAborted"

    return-object v0

    .line 91
    :pswitch_1
    const-string/jumbo v0, "onCaptureSequenceCompleted"

    return-object v0

    .line 87
    :pswitch_2
    const-string/jumbo v0, "onCaptureBufferLost"

    return-object v0

    .line 83
    :pswitch_3
    const-string/jumbo v0, "onCaptureFailed"

    return-object v0

    .line 79
    :pswitch_4
    const-string/jumbo v0, "onCaptureCompleted"

    return-object v0

    .line 75
    :pswitch_5
    const-string/jumbo v0, "onCaptureProgressed"

    return-object v0

    .line 71
    :pswitch_6
    const-string/jumbo v0, "onCaptureStarted"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 349
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 106
    invoke-static {p1}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 110
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.hardware.camera2.extension.IRequestCallback"

    .line 111
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 112
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 122
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 205
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 118
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v10

    .line 197
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {v6, v0}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureSequenceAborted(I)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto/16 :goto_0

    .line 186
    .end local v0    # "_arg0":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 189
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureSequenceCompleted(IJ)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto/16 :goto_0

    .line 173
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 177
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureBufferLost(IJI)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_0

    .line 162
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/camera2/extension/CaptureFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/CaptureFailure;

    .line 165
    .local v1, "_arg1":Landroid/hardware/camera2/extension/CaptureFailure;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {v6, v0, v1}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureFailed(ILandroid/hardware/camera2/extension/CaptureFailure;)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_0

    .line 151
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/camera2/extension/CaptureFailure;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;

    .line 154
    .local v1, "_arg1":Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {v6, v0, v1}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureCompleted(ILandroid/hardware/camera2/extension/ParcelTotalCaptureResult;)V

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_0

    .line 140
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/camera2/extension/ParcelCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/ParcelCaptureResult;

    .line 143
    .local v1, "_arg1":Landroid/hardware/camera2/extension/ParcelCaptureResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {v6, v0, v1}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureProgressed(ILandroid/hardware/camera2/extension/ParcelCaptureResult;)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    goto :goto_0

    .line 127
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/camera2/extension/ParcelCaptureResult;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 129
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 131
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 132
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    move-object/from16 v0, p0

    move v1, v12

    move-wide v2, v13

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->onCaptureStarted(IJJ)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    nop

    .line 208
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":J
    :goto_0
    return v10

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
