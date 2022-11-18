.class public abstract Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;
.super Landroid/os/Binder;
.source "IUdfpsOverlayController.java"

# interfaces
.implements Landroid/hardware/fingerprint/IUdfpsOverlayController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IUdfpsOverlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_hideUdfpsOverlay:I = 0x2

.field static final blacklist TRANSACTION_onAcquired:I = 0x3

.field static final blacklist TRANSACTION_onEnrollmentHelp:I = 0x5

.field static final blacklist TRANSACTION_onEnrollmentProgress:I = 0x4

.field static final blacklist TRANSACTION_setDebugMessage:I = 0x6

.field static final blacklist TRANSACTION_showUdfpsOverlay:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.hardware.fingerprint.IUdfpsOverlayController"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    const-string v0, "android.hardware.fingerprint.IUdfpsOverlayController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 75
    packed-switch p0, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 99
    :pswitch_0
    const-string/jumbo v0, "setDebugMessage"

    return-object v0

    .line 95
    :pswitch_1
    const-string/jumbo v0, "onEnrollmentHelp"

    return-object v0

    .line 91
    :pswitch_2
    const-string/jumbo v0, "onEnrollmentProgress"

    return-object v0

    .line 87
    :pswitch_3
    const-string/jumbo v0, "onAcquired"

    return-object v0

    .line 83
    :pswitch_4
    const-string v0, "hideUdfpsOverlay"

    return-object v0

    .line 79
    :pswitch_5
    const-string/jumbo v0, "showUdfpsOverlay"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 70
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 306
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 110
    invoke-static {p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 114
    move-object/from16 v6, p0

    move/from16 v7, p1

    const-string v8, "android.hardware.fingerprint.IUdfpsOverlayController"

    .line 115
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v7, v9, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 116
    move-object/from16 v10, p2

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    move-object/from16 v10, p2

    .line 118
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 126
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 190
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 122
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v9

    .line 181
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {v6, v0, v1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->setDebugMessage(ILjava/lang/String;)V

    .line 186
    goto :goto_1

    .line 173
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {v6, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onEnrollmentHelp(I)V

    .line 176
    goto :goto_1

    .line 163
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {v6, v0, v1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onEnrollmentProgress(II)V

    .line 168
    goto :goto_1

    .line 153
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {v6, v0, v1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onAcquired(II)V

    .line 158
    goto :goto_1

    .line 145
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {v6, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->hideUdfpsOverlay(I)V

    .line 148
    goto :goto_1

    .line 131
    .end local v0    # "_arg0":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 133
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 135
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 137
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    move-result-object v16

    .line 138
    .local v16, "_arg3":Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    move-object/from16 v0, p0

    move-wide v1, v12

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->showUdfpsOverlay(JIILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V

    .line 140
    nop

    .line 193
    .end local v12    # "_arg0":J
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;
    :goto_1
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
