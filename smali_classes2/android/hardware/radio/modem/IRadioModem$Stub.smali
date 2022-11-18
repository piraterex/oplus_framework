.class public abstract Landroid/hardware/radio/modem/IRadioModem$Stub;
.super Landroid/os/Binder;
.source "IRadioModem.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enableModem:I = 0x1

.field static final blacklist TRANSACTION_getBasebandVersion:I = 0x2

.field static final blacklist TRANSACTION_getDeviceIdentity:I = 0x3

.field static final blacklist TRANSACTION_getHardwareConfig:I = 0x4

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getModemActivityInfo:I = 0x5

.field static final blacklist TRANSACTION_getModemStackStatus:I = 0x6

.field static final blacklist TRANSACTION_getRadioCapability:I = 0x7

.field static final blacklist TRANSACTION_nvReadItem:I = 0x8

.field static final blacklist TRANSACTION_nvResetConfig:I = 0x9

.field static final blacklist TRANSACTION_nvWriteCdmaPrl:I = 0xa

.field static final blacklist TRANSACTION_nvWriteItem:I = 0xb

.field static final blacklist TRANSACTION_requestShutdown:I = 0xc

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0xd

.field static final blacklist TRANSACTION_sendDeviceState:I = 0xe

.field static final blacklist TRANSACTION_setRadioCapability:I = 0xf

.field static final blacklist TRANSACTION_setRadioPower:I = 0x10

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x11


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->markVintfStability()V

    .line 89
    sget-object v0, Landroid/hardware/radio/modem/IRadioModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModem;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    sget-object v0, Landroid/hardware/radio/modem/IRadioModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/modem/IRadioModem;

    if-eqz v1, :cond_1

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/modem/IRadioModem;

    return-object v1

    .line 104
    :cond_1
    new-instance v1, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 108
    return-object p0
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

    .line 112
    sget-object v0, Landroid/hardware/radio/modem/IRadioModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 136
    packed-switch p1, :pswitch_data_0

    .line 297
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 120
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 125
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return v1

    .line 131
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 288
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemResponse;

    move-result-object v2

    .line 290
    .local v2, "_arg0":Landroid/hardware/radio/modem/IRadioModemResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemIndication;

    move-result-object v3

    .line 291
    .local v3, "_arg1":Landroid/hardware/radio/modem/IRadioModemIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->setResponseFunctions(Landroid/hardware/radio/modem/IRadioModemResponse;Landroid/hardware/radio/modem/IRadioModemIndication;)V

    .line 293
    goto/16 :goto_0

    .line 274
    .end local v2    # "_arg0":Landroid/hardware/radio/modem/IRadioModemResponse;
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/IRadioModemIndication;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 278
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 280
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 281
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/radio/modem/IRadioModem$Stub;->setRadioPower(IZZZ)V

    .line 283
    goto/16 :goto_0

    .line 264
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/modem/RadioCapability;

    .line 267
    .local v3, "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->setRadioCapability(ILandroid/hardware/radio/modem/RadioCapability;)V

    .line 269
    goto/16 :goto_0

    .line 252
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 257
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/modem/IRadioModem$Stub;->sendDeviceState(IIZ)V

    .line 259
    goto/16 :goto_0

    .line 246
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->responseAcknowledgement()V

    .line 247
    goto/16 :goto_0

    .line 239
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2}, Landroid/hardware/radio/modem/IRadioModem$Stub;->requestShutdown(I)V

    .line 242
    goto/16 :goto_0

    .line 229
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/modem/NvWriteItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/modem/NvWriteItem;

    .line 232
    .local v3, "_arg1":Landroid/hardware/radio/modem/NvWriteItem;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvWriteItem(ILandroid/hardware/radio/modem/NvWriteItem;)V

    .line 234
    goto/16 :goto_0

    .line 219
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/modem/NvWriteItem;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 222
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvWriteCdmaPrl(I[B)V

    .line 224
    goto/16 :goto_0

    .line 209
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvResetConfig(II)V

    .line 214
    goto :goto_0

    .line 199
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvReadItem(II)V

    .line 204
    goto :goto_0

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getRadioCapability(I)V

    .line 194
    goto :goto_0

    .line 183
    .end local v2    # "_arg0":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getModemStackStatus(I)V

    .line 186
    goto :goto_0

    .line 175
    .end local v2    # "_arg0":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getModemActivityInfo(I)V

    .line 178
    goto :goto_0

    .line 167
    .end local v2    # "_arg0":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getHardwareConfig(I)V

    .line 170
    goto :goto_0

    .line 159
    .end local v2    # "_arg0":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getDeviceIdentity(I)V

    .line 162
    goto :goto_0

    .line 151
    .end local v2    # "_arg0":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getBasebandVersion(I)V

    .line 154
    goto :goto_0

    .line 141
    .end local v2    # "_arg0":I
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 144
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->enableModem(IZ)V

    .line 146
    nop

    .line 300
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
