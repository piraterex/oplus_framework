.class public abstract Landroid/media/tv/ITvInputService$Stub;
.super Landroid/os/Binder;
.source "ITvInputService.java"

# interfaces
.implements Landroid/media/tv/ITvInputService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputService"

.field static final greylist-max-o TRANSACTION_createRecordingSession:I = 0x4

.field static final greylist-max-o TRANSACTION_createSession:I = 0x3

.field static final blacklist TRANSACTION_getAvailableExtensionInterfaceNames:I = 0x5

.field static final blacklist TRANSACTION_getExtensionInterface:I = 0x6

.field static final blacklist TRANSACTION_getExtensionInterfacePermission:I = 0x7

.field static final greylist-max-o TRANSACTION_notifyHardwareAdded:I = 0x8

.field static final greylist-max-o TRANSACTION_notifyHardwareRemoved:I = 0x9

.field static final greylist-max-o TRANSACTION_notifyHdmiDeviceAdded:I = 0xa

.field static final greylist-max-o TRANSACTION_notifyHdmiDeviceRemoved:I = 0xb

.field static final blacklist TRANSACTION_notifyHdmiDeviceUpdated:I = 0xc

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x1

.field static final greylist-max-o TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.media.tv.ITvInputService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    const-string v0, "android.media.tv.ITvInputService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputService;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputService;

    return-object v1

    .line 80
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 137
    :pswitch_0
    const-string v0, "notifyHdmiDeviceUpdated"

    return-object v0

    .line 133
    :pswitch_1
    const-string v0, "notifyHdmiDeviceRemoved"

    return-object v0

    .line 129
    :pswitch_2
    const-string v0, "notifyHdmiDeviceAdded"

    return-object v0

    .line 125
    :pswitch_3
    const-string v0, "notifyHardwareRemoved"

    return-object v0

    .line 121
    :pswitch_4
    const-string v0, "notifyHardwareAdded"

    return-object v0

    .line 117
    :pswitch_5
    const-string v0, "getExtensionInterfacePermission"

    return-object v0

    .line 113
    :pswitch_6
    const-string v0, "getExtensionInterface"

    return-object v0

    .line 109
    :pswitch_7
    const-string v0, "getAvailableExtensionInterfaceNames"

    return-object v0

    .line 105
    :pswitch_8
    const-string v0, "createRecordingSession"

    return-object v0

    .line 101
    :pswitch_9
    const-string v0, "createSession"

    return-object v0

    .line 97
    :pswitch_a
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 93
    :pswitch_b
    const-string v0, "registerCallback"

    return-object v0

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

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 481
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 148
    invoke-static {p1}, Landroid/media/tv/ITvInputService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 152
    const-string v0, "android.media.tv.ITvInputService"

    .line 153
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 154
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 164
    packed-switch p1, :pswitch_data_1

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 160
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v1

    .line 270
    :pswitch_1
    sget-object v2, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 271
    .local v2, "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 273
    goto/16 :goto_0

    .line 262
    .end local v2    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_2
    sget-object v2, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 263
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 265
    goto/16 :goto_0

    .line 254
    .end local v2    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_3
    sget-object v2, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 255
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 257
    goto/16 :goto_0

    .line 246
    .end local v2    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_4
    sget-object v2, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputHardwareInfo;

    .line 247
    .local v2, "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 249
    goto/16 :goto_0

    .line 238
    .end local v2    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_5
    sget-object v2, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputHardwareInfo;

    .line 239
    .restart local v2    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 241
    goto/16 :goto_0

    .line 228
    .end local v2    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    goto :goto_0

    .line 218
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 221
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 223
    goto :goto_0

    .line 210
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual {p0}, Landroid/media/tv/ITvInputService$Stub;->getAvailableExtensionInterfaceNames()Ljava/util/List;

    move-result-object v2

    .line 211
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 213
    goto :goto_0

    .line 199
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v2

    .line 201
    .local v2, "_arg0":Landroid/media/tv/ITvInputSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvInputService$Stub;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    goto :goto_0

    .line 185
    .end local v2    # "_arg0":Landroid/media/tv/ITvInputSessionCallback;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_a
    sget-object v2, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputChannel;

    .line 187
    .local v2, "_arg0":Landroid/view/InputChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v3

    .line 189
    .local v3, "_arg1":Landroid/media/tv/ITvInputSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 191
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/ITvInputService$Stub;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    goto :goto_0

    .line 177
    .end local v2    # "_arg0":Landroid/view/InputChannel;
    .end local v3    # "_arg1":Landroid/media/tv/ITvInputSessionCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputServiceCallback;

    move-result-object v2

    .line 178
    .local v2, "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V

    .line 180
    goto :goto_0

    .line 169
    .end local v2    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputServiceCallback;

    move-result-object v2

    .line 170
    .restart local v2    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V

    .line 172
    nop

    .line 280
    .end local v2    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    :goto_0
    return v1

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
