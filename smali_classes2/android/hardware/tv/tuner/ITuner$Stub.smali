.class public abstract Landroid/hardware/tv/tuner/ITuner$Stub;
.super Landroid/os/Binder;
.source "ITuner.java"

# interfaces
.implements Landroid/hardware/tv/tuner/ITuner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/ITuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/ITuner$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDemuxCaps:I = 0x4

.field static final blacklist TRANSACTION_getFrontendIds:I = 0x1

.field static final blacklist TRANSACTION_getFrontendInfo:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getLnbIds:I = 0x7

.field static final blacklist TRANSACTION_getMaxNumberOfFrontends:I = 0xc

.field static final blacklist TRANSACTION_openDemux:I = 0x3

.field static final blacklist TRANSACTION_openDescrambler:I = 0x5

.field static final blacklist TRANSACTION_openFrontendById:I = 0x2

.field static final blacklist TRANSACTION_openLnbById:I = 0x8

.field static final blacklist TRANSACTION_openLnbByName:I = 0x9

.field static final blacklist TRANSACTION_setLna:I = 0xa

.field static final blacklist TRANSACTION_setMaxNumberOfFrontends:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->markVintfStability()V

    .line 85
    sget-object v0, Landroid/hardware/tv/tuner/ITuner$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/ITuner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/ITuner;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    sget-object v0, Landroid/hardware/tv/tuner/ITuner$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/tv/tuner/ITuner;

    if-eqz v1, :cond_1

    .line 98
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/ITuner;

    return-object v1

    .line 100
    :cond_1
    new-instance v1, Landroid/hardware/tv/tuner/ITuner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/ITuner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 104
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

    .line 108
    sget-object v0, Landroid/hardware/tv/tuner/ITuner$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 109
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 116
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v1

    .line 121
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return v1

    .line 127
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 249
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/ITuner$Stub;->getMaxNumberOfFrontends(I)I

    move-result v3

    .line 252
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    goto/16 :goto_2

    .line 238
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 241
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2, v3}, Landroid/hardware/tv/tuner/ITuner$Stub;->setMaxNumberOfFrontends(II)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_2

    .line 229
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 230
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/ITuner$Stub;->setLna(Z)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_2

    .line 211
    .end local v2    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 214
    .local v3, "_arg1_length":I
    if-gez v3, :cond_1

    .line 215
    const/4 v4, 0x0

    .local v4, "_arg1":[I
    goto :goto_0

    .line 217
    .end local v4    # "_arg1":[I
    :cond_1
    new-array v4, v3, [I

    .line 219
    .restart local v4    # "_arg1":[I
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2, v4}, Landroid/hardware/tv/tuner/ITuner$Stub;->openLnbByName(Ljava/lang/String;[I)Landroid/hardware/tv/tuner/ILnb;

    move-result-object v5

    .line 221
    .local v5, "_result":Landroid/hardware/tv/tuner/ILnb;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 223
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 224
    goto/16 :goto_2

    .line 201
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_result":Landroid/hardware/tv/tuner/ILnb;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/ITuner$Stub;->openLnbById(I)Landroid/hardware/tv/tuner/ILnb;

    move-result-object v3

    .line 204
    .local v3, "_result":Landroid/hardware/tv/tuner/ILnb;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 206
    goto :goto_2

    .line 193
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/tv/tuner/ILnb;
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getLnbIds()[I

    move-result-object v2

    .line 194
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 196
    goto :goto_2

    .line 184
    .end local v2    # "_result":[I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/ITuner$Stub;->getFrontendInfo(I)Landroid/hardware/tv/tuner/FrontendInfo;

    move-result-object v3

    .line 187
    .local v3, "_result":Landroid/hardware/tv/tuner/FrontendInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 189
    goto :goto_2

    .line 176
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/tv/tuner/FrontendInfo;
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->openDescrambler()Landroid/hardware/tv/tuner/IDescrambler;

    move-result-object v2

    .line 177
    .local v2, "_result":Landroid/hardware/tv/tuner/IDescrambler;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 179
    goto :goto_2

    .line 169
    .end local v2    # "_result":Landroid/hardware/tv/tuner/IDescrambler;
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getDemuxCaps()Landroid/hardware/tv/tuner/DemuxCapabilities;

    move-result-object v2

    .line 170
    .local v2, "_result":Landroid/hardware/tv/tuner/DemuxCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 172
    goto :goto_2

    .line 154
    .end local v2    # "_result":Landroid/hardware/tv/tuner/DemuxCapabilities;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg0_length":I
    if-gez v2, :cond_2

    .line 156
    const/4 v3, 0x0

    .local v3, "_arg0":[I
    goto :goto_1

    .line 158
    .end local v3    # "_arg0":[I
    :cond_2
    new-array v3, v2, [I

    .line 160
    .restart local v3    # "_arg0":[I
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v3}, Landroid/hardware/tv/tuner/ITuner$Stub;->openDemux([I)Landroid/hardware/tv/tuner/IDemux;

    move-result-object v4

    .line 162
    .local v4, "_result":Landroid/hardware/tv/tuner/IDemux;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 165
    goto :goto_2

    .line 144
    .end local v2    # "_arg0_length":I
    .end local v3    # "_arg0":[I
    .end local v4    # "_result":Landroid/hardware/tv/tuner/IDemux;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/ITuner$Stub;->openFrontendById(I)Landroid/hardware/tv/tuner/IFrontend;

    move-result-object v3

    .line 147
    .local v3, "_result":Landroid/hardware/tv/tuner/IFrontend;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 149
    goto :goto_2

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/tv/tuner/IFrontend;
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getFrontendIds()[I

    move-result-object v2

    .line 137
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 139
    nop

    .line 261
    .end local v2    # "_result":[I
    :goto_2
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
