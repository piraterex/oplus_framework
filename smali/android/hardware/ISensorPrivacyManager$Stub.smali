.class public abstract Landroid/hardware/ISensorPrivacyManager$Stub;
.super Landroid/os/Binder;
.source "ISensorPrivacyManager.java"

# interfaces
.implements Landroid/hardware/ISensorPrivacyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ISensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addSensorPrivacyListener:I = 0x2

.field static final blacklist TRANSACTION_addToggleSensorPrivacyListener:I = 0x3

.field static final blacklist TRANSACTION_isCombinedToggleSensorPrivacyEnabled:I = 0x7

.field static final blacklist TRANSACTION_isSensorPrivacyEnabled:I = 0x6

.field static final blacklist TRANSACTION_isToggleSensorPrivacyEnabled:I = 0x8

.field static final blacklist TRANSACTION_removeSensorPrivacyListener:I = 0x4

.field static final blacklist TRANSACTION_removeToggleSensorPrivacyListener:I = 0x5

.field static final blacklist TRANSACTION_requiresAuthentication:I = 0xd

.field static final blacklist TRANSACTION_setSensorPrivacy:I = 0x9

.field static final blacklist TRANSACTION_setToggleSensorPrivacy:I = 0xa

.field static final blacklist TRANSACTION_setToggleSensorPrivacyForProfileGroup:I = 0xb

.field static final blacklist TRANSACTION_showSensorUseDialog:I = 0xe

.field static final blacklist TRANSACTION_supportsSensorToggle:I = 0x1

.field static final blacklist TRANSACTION_suppressToggleSensorPrivacyReminders:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "android.hardware.ISensorPrivacyManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    const-string v0, "android.hardware.ISensorPrivacyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/ISensorPrivacyManager;

    if-eqz v1, :cond_1

    .line 87
    move-object v1, v0

    check-cast v1, Landroid/hardware/ISensorPrivacyManager;

    return-object v1

    .line 89
    :cond_1
    new-instance v1, Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 98
    packed-switch p0, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 154
    :pswitch_0
    const-string/jumbo v0, "showSensorUseDialog"

    return-object v0

    .line 150
    :pswitch_1
    const-string/jumbo v0, "requiresAuthentication"

    return-object v0

    .line 146
    :pswitch_2
    const-string/jumbo v0, "suppressToggleSensorPrivacyReminders"

    return-object v0

    .line 142
    :pswitch_3
    const-string/jumbo v0, "setToggleSensorPrivacyForProfileGroup"

    return-object v0

    .line 138
    :pswitch_4
    const-string/jumbo v0, "setToggleSensorPrivacy"

    return-object v0

    .line 134
    :pswitch_5
    const-string/jumbo v0, "setSensorPrivacy"

    return-object v0

    .line 130
    :pswitch_6
    const-string v0, "isToggleSensorPrivacyEnabled"

    return-object v0

    .line 126
    :pswitch_7
    const-string v0, "isCombinedToggleSensorPrivacyEnabled"

    return-object v0

    .line 122
    :pswitch_8
    const-string v0, "isSensorPrivacyEnabled"

    return-object v0

    .line 118
    :pswitch_9
    const-string/jumbo v0, "removeToggleSensorPrivacyListener"

    return-object v0

    .line 114
    :pswitch_a
    const-string/jumbo v0, "removeSensorPrivacyListener"

    return-object v0

    .line 110
    :pswitch_b
    const-string v0, "addToggleSensorPrivacyListener"

    return-object v0

    .line 106
    :pswitch_c
    const-string v0, "addSensorPrivacyListener"

    return-object v0

    .line 102
    :pswitch_d
    const-string/jumbo v0, "supportsSensorToggle"

    return-object v0

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

    .line 93
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 609
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 165
    invoke-static {p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 169
    const-string v0, "android.hardware.ISensorPrivacyManager"

    .line 170
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 171
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 181
    packed-switch p1, :pswitch_data_1

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 177
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v1

    .line 324
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 325
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->showSensorUseDialog(I)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto/16 :goto_0

    .line 316
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;->requiresAuthentication()Z

    move-result v2

    .line 317
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 319
    goto/16 :goto_0

    .line 302
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 306
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 308
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 309
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/ISensorPrivacyManager$Stub;->suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_0

    .line 287
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v5    # "_arg3":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 291
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 293
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 294
    .restart local v5    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacyForProfileGroup(IIIZ)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto/16 :goto_0

    .line 272
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 278
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 279
    .restart local v5    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacy(IIIZ)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto/16 :goto_0

    .line 263
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 264
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->setSensorPrivacy(Z)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto/16 :goto_0

    .line 251
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2, v3}, Landroid/hardware/ISensorPrivacyManager$Stub;->isToggleSensorPrivacyEnabled(II)Z

    move-result v4

    .line 256
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    goto/16 :goto_0

    .line 241
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v3

    .line 244
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 246
    goto :goto_0

    .line 233
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;->isSensorPrivacyEnabled()Z

    move-result v2

    .line 234
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 236
    goto :goto_0

    .line 225
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v2

    .line 226
    .local v2, "_arg0":Landroid/hardware/ISensorPrivacyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_0

    .line 216
    .end local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v2

    .line 217
    .restart local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto :goto_0

    .line 207
    .end local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v2

    .line 208
    .restart local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_0

    .line 198
    .end local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v2

    .line 199
    .restart local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    goto :goto_0

    .line 186
    .end local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2, v3}, Landroid/hardware/ISensorPrivacyManager$Stub;->supportsSensorToggle(II)Z

    move-result v4

    .line 191
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    nop

    .line 335
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :goto_0
    return v1

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
