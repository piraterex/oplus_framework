.class public abstract Landroid/app/trust/ITrustManager$Stub;
.super Landroid/os/Binder;
.source "ITrustManager.java"

# interfaces
.implements Landroid/app/trust/ITrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/ITrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/ITrustManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.trust.ITrustManager"

.field static final blacklist TRANSACTION_clearAllBiometricRecognized:I = 0xe

.field static final greylist-max-o TRANSACTION_isDeviceLocked:I = 0xa

.field static final greylist-max-o TRANSACTION_isDeviceSecure:I = 0xb

.field static final greylist-max-o TRANSACTION_isTrustUsuallyManaged:I = 0xc

.field static final greylist-max-o TRANSACTION_registerTrustListener:I = 0x6

.field static final greylist-max-o TRANSACTION_reportEnabledTrustAgentsChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_reportKeyguardShowingChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_reportUnlockAttempt:I = 0x1

.field static final greylist-max-o TRANSACTION_reportUnlockLockout:I = 0x4

.field static final blacklist TRANSACTION_reportUserMayRequestUnlock:I = 0x3

.field static final blacklist TRANSACTION_reportUserRequestedUnlock:I = 0x2

.field static final greylist-max-o TRANSACTION_setDeviceLockedForUser:I = 0x9

.field static final blacklist TRANSACTION_unlockedByBiometricForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_unregisterTrustListener:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.app.trust.ITrustManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/trust/ITrustManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    const-string v0, "android.app.trust.ITrustManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/trust/ITrustManager;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/app/trust/ITrustManager;

    return-object v1

    .line 86
    :cond_1
    new-instance v1, Landroid/app/trust/ITrustManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/trust/ITrustManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 151
    :pswitch_0
    const-string v0, "clearAllBiometricRecognized"

    return-object v0

    .line 147
    :pswitch_1
    const-string/jumbo v0, "unlockedByBiometricForUser"

    return-object v0

    .line 143
    :pswitch_2
    const-string v0, "isTrustUsuallyManaged"

    return-object v0

    .line 139
    :pswitch_3
    const-string v0, "isDeviceSecure"

    return-object v0

    .line 135
    :pswitch_4
    const-string v0, "isDeviceLocked"

    return-object v0

    .line 131
    :pswitch_5
    const-string/jumbo v0, "setDeviceLockedForUser"

    return-object v0

    .line 127
    :pswitch_6
    const-string/jumbo v0, "reportKeyguardShowingChanged"

    return-object v0

    .line 123
    :pswitch_7
    const-string/jumbo v0, "unregisterTrustListener"

    return-object v0

    .line 119
    :pswitch_8
    const-string/jumbo v0, "registerTrustListener"

    return-object v0

    .line 115
    :pswitch_9
    const-string/jumbo v0, "reportEnabledTrustAgentsChanged"

    return-object v0

    .line 111
    :pswitch_a
    const-string/jumbo v0, "reportUnlockLockout"

    return-object v0

    .line 107
    :pswitch_b
    const-string/jumbo v0, "reportUserMayRequestUnlock"

    return-object v0

    .line 103
    :pswitch_c
    const-string/jumbo v0, "reportUserRequestedUnlock"

    return-object v0

    .line 99
    :pswitch_d
    const-string/jumbo v0, "reportUnlockAttempt"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 589
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 162
    invoke-static {p1}, Landroid/app/trust/ITrustManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 166
    const-string v0, "android.app.trust.ITrustManager"

    .line 167
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 168
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 178
    packed-switch p1, :pswitch_data_1

    .line 324
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 174
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    return v1

    .line 314
    :pswitch_1
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/BiometricSourceType;

    .line 316
    .local v2, "_arg0":Landroid/hardware/biometrics/BiometricSourceType;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 317
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    goto/16 :goto_0

    .line 303
    .end local v2    # "_arg0":Landroid/hardware/biometrics/BiometricSourceType;
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 305
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/BiometricSourceType;

    .line 306
    .local v3, "_arg1":Landroid/hardware/biometrics/BiometricSourceType;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    goto/16 :goto_0

    .line 293
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/biometrics/BiometricSourceType;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 294
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustManager$Stub;->isTrustUsuallyManaged(I)Z

    move-result v3

    .line 296
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    goto/16 :goto_0

    .line 281
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 284
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->isDeviceSecure(II)Z

    move-result v4

    .line 286
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto/16 :goto_0

    .line 269
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 272
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->isDeviceLocked(II)Z

    move-result v4

    .line 274
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 276
    goto/16 :goto_0

    .line 258
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 261
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->setDeviceLockedForUser(IZ)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_0

    .line 251
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/app/trust/ITrustManager$Stub;->reportKeyguardShowingChanged()V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto/16 :goto_0

    .line 243
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    move-result-object v2

    .line 244
    .local v2, "_arg0":Landroid/app/trust/ITrustListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustManager$Stub;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto :goto_0

    .line 234
    .end local v2    # "_arg0":Landroid/app/trust/ITrustListener;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    move-result-object v2

    .line 235
    .restart local v2    # "_arg0":Landroid/app/trust/ITrustListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustManager$Stub;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto :goto_0

    .line 225
    .end local v2    # "_arg0":Landroid/app/trust/ITrustListener;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustManager$Stub;->reportEnabledTrustAgentsChanged(I)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_0

    .line 214
    .end local v2    # "_arg0":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 217
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->reportUnlockLockout(II)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto :goto_0

    .line 205
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustManager$Stub;->reportUserMayRequestUnlock(I)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    goto :goto_0

    .line 194
    .end local v2    # "_arg0":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 197
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->reportUserRequestedUnlock(IZ)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_0

    .line 183
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 185
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->reportUnlockAttempt(ZI)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    nop

    .line 327
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
