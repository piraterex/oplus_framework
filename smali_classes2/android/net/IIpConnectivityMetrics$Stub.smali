.class public abstract Landroid/net/IIpConnectivityMetrics$Stub;
.super Landroid/os/Binder;
.source "IIpConnectivityMetrics.java"

# interfaces
.implements Landroid/net/IIpConnectivityMetrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpConnectivityMetrics$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.IIpConnectivityMetrics"

.field static final greylist-max-o TRANSACTION_addNetdEventCallback:I = 0x4

.field static final blacklist TRANSACTION_logDefaultNetworkEvent:I = 0x3

.field static final blacklist TRANSACTION_logDefaultNetworkValidity:I = 0x2

.field static final greylist-max-o TRANSACTION_logEvent:I = 0x1

.field static final greylist-max-o TRANSACTION_removeNetdEventCallback:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.net.IIpConnectivityMetrics"

    invoke-virtual {p0, p0, v0}, Landroid/net/IIpConnectivityMetrics$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    const-string v0, "android.net.IIpConnectivityMetrics"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IIpConnectivityMetrics;

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/net/IIpConnectivityMetrics;

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Landroid/net/IIpConnectivityMetrics$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IIpConnectivityMetrics$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_0
    const-string v0, "removeNetdEventCallback"

    return-object v0

    .line 90
    :pswitch_1
    const-string v0, "addNetdEventCallback"

    return-object v0

    .line 86
    :pswitch_2
    const-string v0, "logDefaultNetworkEvent"

    return-object v0

    .line 82
    :pswitch_3
    const-string v0, "logDefaultNetworkValidity"

    return-object v0

    .line 78
    :pswitch_4
    const-string v0, "logEvent"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 324
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Landroid/net/IIpConnectivityMetrics$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "android.net.IIpConnectivityMetrics"

    .line 110
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_0

    const v0, 0xffffff

    if-gt v11, v0, :cond_0

    .line 111
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_0
    packed-switch v11, :pswitch_data_0

    .line 121
    packed-switch v11, :pswitch_data_1

    .line 191
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 117
    :pswitch_0
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v15

    .line 182
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {v10, v0}, Landroid/net/IIpConnectivityMetrics$Stub;->removeNetdEventCallback(I)Z

    move-result v1

    .line 185
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 187
    goto/16 :goto_0

    .line 170
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetdEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdEventCallback;

    move-result-object v1

    .line 173
    .local v1, "_arg1":Landroid/net/INetdEventCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {v10, v0, v1}, Landroid/net/IIpConnectivityMetrics$Stub;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v2

    .line 175
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 177
    goto/16 :goto_0

    .line 145
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/INetdEventCallback;
    .end local v2    # "_result":Z
    :pswitch_3
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/Network;

    .line 147
    .local v16, "_arg0":Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 149
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 151
    .local v18, "_arg2":Z
    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/net/LinkProperties;

    .line 153
    .local v19, "_arg3":Landroid/net/LinkProperties;
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/net/NetworkCapabilities;

    .line 155
    .local v20, "_arg4":Landroid/net/NetworkCapabilities;
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/net/Network;

    .line 157
    .local v21, "_arg5":Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 159
    .local v22, "_arg6":I
    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/net/LinkProperties;

    .line 161
    .local v23, "_arg7":Landroid/net/LinkProperties;
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/net/NetworkCapabilities;

    .line 162
    .local v24, "_arg8":Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/net/IIpConnectivityMetrics$Stub;->logDefaultNetworkEvent(Landroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_0

    .line 136
    .end local v16    # "_arg0":Landroid/net/Network;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Z
    .end local v19    # "_arg3":Landroid/net/LinkProperties;
    .end local v20    # "_arg4":Landroid/net/NetworkCapabilities;
    .end local v21    # "_arg5":Landroid/net/Network;
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":Landroid/net/LinkProperties;
    .end local v24    # "_arg8":Landroid/net/NetworkCapabilities;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 137
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {v10, v0}, Landroid/net/IIpConnectivityMetrics$Stub;->logDefaultNetworkValidity(Z)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto :goto_0

    .line 126
    .end local v0    # "_arg0":Z
    :pswitch_5
    sget-object v0, Landroid/net/ConnectivityMetricsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityMetricsEvent;

    .line 127
    .local v0, "_arg0":Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {v10, v0}, Landroid/net/IIpConnectivityMetrics$Stub;->logEvent(Landroid/net/ConnectivityMetricsEvent;)I

    move-result v1

    .line 129
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    nop

    .line 194
    .end local v0    # "_arg0":Landroid/net/ConnectivityMetricsEvent;
    .end local v1    # "_result":I
    :goto_0
    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
