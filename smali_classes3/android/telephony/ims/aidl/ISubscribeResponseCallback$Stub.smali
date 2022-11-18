.class public abstract Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;
.super Landroid/os/Binder;
.source "ISubscribeResponseCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISubscribeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCommandError:I = 0x1

.field static final blacklist TRANSACTION_onNetworkRespHeader:I = 0x3

.field static final blacklist TRANSACTION_onNetworkResponse:I = 0x2

.field static final blacklist TRANSACTION_onNotifyCapabilitiesUpdate:I = 0x4

.field static final blacklist TRANSACTION_onResourceTerminated:I = 0x5

.field static final blacklist TRANSACTION_onTerminated:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_0
    const-string/jumbo v0, "onTerminated"

    return-object v0

    .line 88
    :pswitch_1
    const-string/jumbo v0, "onResourceTerminated"

    return-object v0

    .line 84
    :pswitch_2
    const-string/jumbo v0, "onNotifyCapabilitiesUpdate"

    return-object v0

    .line 80
    :pswitch_3
    const-string/jumbo v0, "onNetworkRespHeader"

    return-object v0

    .line 76
    :pswitch_4
    const-string/jumbo v0, "onNetworkResponse"

    return-object v0

    .line 72
    :pswitch_5
    const-string/jumbo v0, "onCommandError"

    return-object v0

    nop

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

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 288
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 119
    packed-switch p1, :pswitch_data_1

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 172
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 175
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onTerminated(Ljava/lang/String;J)V

    .line 177
    goto :goto_0

    .line 164
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_2
    sget-object v2, Landroid/telephony/ims/RcsContactTerminatedReason;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 165
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onResourceTerminated(Ljava/util/List;)V

    .line 167
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onNotifyCapabilitiesUpdate(Ljava/util/List;)V

    .line 159
    goto :goto_0

    .line 142
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onNetworkRespHeader(ILjava/lang/String;ILjava/lang/String;)V

    .line 151
    goto :goto_0

    .line 132
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onNetworkResponse(ILjava/lang/String;)V

    .line 137
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onCommandError(I)V

    .line 127
    nop

    .line 184
    .end local v2    # "_arg0":I
    :goto_0
    return v1

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
