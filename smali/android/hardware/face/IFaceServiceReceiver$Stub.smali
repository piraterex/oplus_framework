.class public abstract Landroid/hardware/face/IFaceServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IFaceServiceReceiver.java"

# interfaces
.implements Landroid/hardware/face/IFaceServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcquired:I = 0x2

.field static final blacklist TRANSACTION_onAuthenticationFailed:I = 0x5

.field static final blacklist TRANSACTION_onAuthenticationFrame:I = 0xb

.field static final blacklist TRANSACTION_onAuthenticationSucceeded:I = 0x3

.field static final blacklist TRANSACTION_onChallengeGenerated:I = 0xa

.field static final blacklist TRANSACTION_onEnrollResult:I = 0x1

.field static final blacklist TRANSACTION_onEnrollmentFrame:I = 0xc

.field static final blacklist TRANSACTION_onError:I = 0x6

.field static final blacklist TRANSACTION_onFaceDetected:I = 0x4

.field static final blacklist TRANSACTION_onFeatureGet:I = 0x9

.field static final blacklist TRANSACTION_onFeatureSet:I = 0x8

.field static final blacklist TRANSACTION_onRemoved:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.hardware.face.IFaceServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "android.hardware.face.IFaceServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/hardware/face/IFaceServiceReceiver;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Landroid/hardware/face/IFaceServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 133
    :pswitch_0
    const-string/jumbo v0, "onEnrollmentFrame"

    return-object v0

    .line 129
    :pswitch_1
    const-string/jumbo v0, "onAuthenticationFrame"

    return-object v0

    .line 125
    :pswitch_2
    const-string/jumbo v0, "onChallengeGenerated"

    return-object v0

    .line 121
    :pswitch_3
    const-string/jumbo v0, "onFeatureGet"

    return-object v0

    .line 117
    :pswitch_4
    const-string/jumbo v0, "onFeatureSet"

    return-object v0

    .line 113
    :pswitch_5
    const-string/jumbo v0, "onRemoved"

    return-object v0

    .line 109
    :pswitch_6
    const-string/jumbo v0, "onError"

    return-object v0

    .line 105
    :pswitch_7
    const-string/jumbo v0, "onAuthenticationFailed"

    return-object v0

    .line 101
    :pswitch_8
    const-string/jumbo v0, "onFaceDetected"

    return-object v0

    .line 97
    :pswitch_9
    const-string/jumbo v0, "onAuthenticationSucceeded"

    return-object v0

    .line 93
    :pswitch_a
    const-string/jumbo v0, "onAcquired"

    return-object v0

    .line 89
    :pswitch_b
    const-string/jumbo v0, "onEnrollResult"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 475
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 144
    invoke-static {p1}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 148
    const-string v0, "android.hardware.face.IFaceServiceReceiver"

    .line 149
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 150
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 160
    packed-switch p1, :pswitch_data_1

    .line 283
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 156
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v1

    .line 276
    :pswitch_1
    sget-object v2, Landroid/hardware/face/FaceEnrollFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceEnrollFrame;

    .line 277
    .local v2, "_arg0":Landroid/hardware/face/FaceEnrollFrame;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    .line 279
    goto/16 :goto_0

    .line 268
    .end local v2    # "_arg0":Landroid/hardware/face/FaceEnrollFrame;
    :pswitch_2
    sget-object v2, Landroid/hardware/face/FaceAuthenticationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceAuthenticationFrame;

    .line 269
    .local v2, "_arg0":Landroid/hardware/face/FaceAuthenticationFrame;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    .line 271
    goto/16 :goto_0

    .line 256
    .end local v2    # "_arg0":Landroid/hardware/face/FaceAuthenticationFrame;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 260
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 261
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onChallengeGenerated(IIJ)V

    .line 263
    goto/16 :goto_0

    .line 244
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 246
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 248
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v4

    .line 249
    .local v4, "_arg2":[Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onFeatureGet(Z[I[Z)V

    .line 251
    goto/16 :goto_0

    .line 234
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 236
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onFeatureSet(ZI)V

    .line 239
    goto/16 :goto_0

    .line 224
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_6
    sget-object v2, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    .line 226
    .local v2, "_arg0":Landroid/hardware/face/Face;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onRemoved(Landroid/hardware/face/Face;I)V

    .line 229
    goto :goto_0

    .line 214
    .end local v2    # "_arg0":Landroid/hardware/face/Face;
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 217
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onError(II)V

    .line 219
    goto :goto_0

    .line 208
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAuthenticationFailed()V

    .line 209
    goto :goto_0

    .line 197
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 201
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 202
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onFaceDetected(IIZ)V

    .line 204
    goto :goto_0

    .line 185
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_a
    sget-object v2, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    .line 187
    .local v2, "_arg0":Landroid/hardware/face/Face;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 190
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V

    .line 192
    goto :goto_0

    .line 175
    .end local v2    # "_arg0":Landroid/hardware/face/Face;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAcquired(II)V

    .line 180
    goto :goto_0

    .line 165
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_c
    sget-object v2, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    .line 167
    .local v2, "_arg0":Landroid/hardware/face/Face;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onEnrollResult(Landroid/hardware/face/Face;I)V

    .line 170
    nop

    .line 286
    .end local v2    # "_arg0":Landroid/hardware/face/Face;
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
