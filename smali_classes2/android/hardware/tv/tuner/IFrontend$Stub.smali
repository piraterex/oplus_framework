.class public abstract Landroid/hardware/tv/tuner/IFrontend$Stub;
.super Landroid/os/Binder;
.source "IFrontend.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IFrontend;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFrontend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IFrontend$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x4

.field static final blacklist TRANSACTION_getFrontendStatusReadiness:I = 0xd

.field static final blacklist TRANSACTION_getHardwareInfo:I = 0xb

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getStatus:I = 0x7

.field static final blacklist TRANSACTION_linkCiCam:I = 0x9

.field static final blacklist TRANSACTION_removeOutputPid:I = 0xc

.field static final blacklist TRANSACTION_scan:I = 0x5

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setLnb:I = 0x8

.field static final blacklist TRANSACTION_stopScan:I = 0x6

.field static final blacklist TRANSACTION_stopTune:I = 0x3

.field static final blacklist TRANSACTION_tune:I = 0x2

.field static final blacklist TRANSACTION_unlinkCiCam:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->markVintfStability()V

    .line 82
    sget-object v0, Landroid/hardware/tv/tuner/IFrontend$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFrontend;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    sget-object v0, Landroid/hardware/tv/tuner/IFrontend$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/tv/tuner/IFrontend;

    if-eqz v1, :cond_1

    .line 95
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IFrontend;

    return-object v1

    .line 97
    :cond_1
    new-instance v1, Landroid/hardware/tv/tuner/IFrontend$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IFrontend$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 101
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    sget-object v0, Landroid/hardware/tv/tuner/IFrontend$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 129
    packed-switch p1, :pswitch_data_0

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 113
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v1

    .line 118
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v1

    .line 124
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 235
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 236
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getFrontendStatusReadiness([I)[I

    move-result-object v3

    .line 238
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 240
    goto/16 :goto_0

    .line 226
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":[I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->removeOutputPid(I)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto/16 :goto_0

    .line 218
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getHardwareInfo()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    goto/16 :goto_0

    .line 210
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->unlinkCiCam(I)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto/16 :goto_0

    .line 200
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->linkCiCam(I)I

    move-result v3

    .line 203
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    goto/16 :goto_0

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->setLnb(I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_0

    .line 181
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 182
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getStatus([I)[Landroid/hardware/tv/tuner/FrontendStatus;

    move-result-object v3

    .line 184
    .local v3, "_result":[Landroid/hardware/tv/tuner/FrontendStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 186
    goto :goto_0

    .line 174
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":[Landroid/hardware/tv/tuner/FrontendStatus;
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->stopScan()V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_0

    .line 164
    :pswitch_8
    sget-object v2, Landroid/hardware/tv/tuner/FrontendSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/FrontendSettings;

    .line 166
    .local v2, "_arg0":Landroid/hardware/tv/tuner/FrontendSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3}, Landroid/hardware/tv/tuner/IFrontend$Stub;->scan(Landroid/hardware/tv/tuner/FrontendSettings;I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/FrontendSettings;
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->close()V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_0

    .line 151
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->stopTune()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_0

    .line 143
    :pswitch_b
    sget-object v2, Landroid/hardware/tv/tuner/FrontendSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/FrontendSettings;

    .line 144
    .restart local v2    # "_arg0":Landroid/hardware/tv/tuner/FrontendSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->tune(Landroid/hardware/tv/tuner/FrontendSettings;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto :goto_0

    .line 134
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/FrontendSettings;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFrontendCallback;

    move-result-object v2

    .line 135
    .local v2, "_arg0":Landroid/hardware/tv/tuner/IFrontendCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->setCallback(Landroid/hardware/tv/tuner/IFrontendCallback;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    nop

    .line 247
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/IFrontendCallback;
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method
