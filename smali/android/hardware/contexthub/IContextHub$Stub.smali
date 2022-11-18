.class public abstract Landroid/hardware/contexthub/IContextHub$Stub;
.super Landroid/os/Binder;
.source "IContextHub.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IContextHub$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disableNanoapp:I = 0x4

.field static final blacklist TRANSACTION_enableNanoapp:I = 0x5

.field static final blacklist TRANSACTION_getContextHubs:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_loadNanoapp:I = 0x2

.field static final blacklist TRANSACTION_onHostEndpointConnected:I = 0xa

.field static final blacklist TRANSACTION_onHostEndpointDisconnected:I = 0xb

.field static final blacklist TRANSACTION_onSettingChanged:I = 0x6

.field static final blacklist TRANSACTION_queryNanoapps:I = 0x7

.field static final blacklist TRANSACTION_registerCallback:I = 0x8

.field static final blacklist TRANSACTION_sendMessageToHub:I = 0x9

.field static final blacklist TRANSACTION_unloadNanoapp:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHub$Stub;->markVintfStability()V

    .line 72
    sget-object v0, Landroid/hardware/contexthub/IContextHub$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/contexthub/IContextHub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHub;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    sget-object v0, Landroid/hardware/contexthub/IContextHub$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/contexthub/IContextHub;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/hardware/contexthub/IContextHub;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Landroid/hardware/contexthub/IContextHub$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/contexthub/IContextHub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 91
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

    .line 95
    sget-object v0, Landroid/hardware/contexthub/IContextHub$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 119
    packed-switch p1, :pswitch_data_0

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 103
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 108
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHub$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v1

    .line 114
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHub$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 234
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    .line 235
    .local v2, "_arg0":C
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2}, Landroid/hardware/contexthub/IContextHub$Stub;->onHostEndpointDisconnected(C)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto/16 :goto_0

    .line 225
    .end local v2    # "_arg0":C
    :pswitch_1
    sget-object v2, Landroid/hardware/contexthub/HostEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HostEndpointInfo;

    .line 226
    .local v2, "_arg0":Landroid/hardware/contexthub/HostEndpointInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/hardware/contexthub/IContextHub$Stub;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto/16 :goto_0

    .line 214
    .end local v2    # "_arg0":Landroid/hardware/contexthub/HostEndpointInfo;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/contexthub/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/ContextHubMessage;

    .line 217
    .local v3, "_arg1":Landroid/hardware/contexthub/ContextHubMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2, v3}, Landroid/hardware/contexthub/IContextHub$Stub;->sendMessageToHub(ILandroid/hardware/contexthub/ContextHubMessage;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto/16 :goto_0

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/ContextHubMessage;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubCallback;

    move-result-object v3

    .line 206
    .local v3, "_arg1":Landroid/hardware/contexthub/IContextHubCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2, v3}, Landroid/hardware/contexthub/IContextHub$Stub;->registerCallback(ILandroid/hardware/contexthub/IContextHubCallback;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    goto/16 :goto_0

    .line 194
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/IContextHubCallback;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/hardware/contexthub/IContextHub$Stub;->queryNanoapps(I)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto/16 :goto_0

    .line 183
    .end local v2    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 185
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 186
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3}, Landroid/hardware/contexthub/IContextHub$Stub;->onSettingChanged(BZ)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_0

    .line 170
    .end local v2    # "_arg0":B
    .end local v3    # "_arg1":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 174
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 175
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/contexthub/IContextHub$Stub;->enableNanoapp(IJI)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 161
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 162
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/contexthub/IContextHub$Stub;->disableNanoapp(IJI)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_0

    .line 144
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 148
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 149
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/contexthub/IContextHub$Stub;->unloadNanoapp(IJI)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_0

    .line 131
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/contexthub/NanoappBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/NanoappBinary;

    .line 135
    .local v3, "_arg1":Landroid/hardware/contexthub/NanoappBinary;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 136
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/contexthub/IContextHub$Stub;->loadNanoapp(ILandroid/hardware/contexthub/NanoappBinary;I)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_0

    .line 123
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/NanoappBinary;
    .end local v4    # "_arg2":I
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHub$Stub;->getContextHubs()Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/ContextHubInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 126
    nop

    .line 245
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/ContextHubInfo;>;"
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
