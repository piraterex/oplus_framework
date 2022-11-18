.class public abstract Landroid/media/IMediaRoute2ProviderService$Stub;
.super Landroid/os/Binder;
.source "IMediaRoute2ProviderService.java"

# interfaces
.implements Landroid/media/IMediaRoute2ProviderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRoute2ProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deselectRoute:I = 0x6

.field static final blacklist TRANSACTION_releaseSession:I = 0x9

.field static final blacklist TRANSACTION_requestCreateSession:I = 0x4

.field static final blacklist TRANSACTION_selectRoute:I = 0x5

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setRouteVolume:I = 0x3

.field static final blacklist TRANSACTION_setSessionVolume:I = 0x8

.field static final blacklist TRANSACTION_transferToRoute:I = 0x7

.field static final blacklist TRANSACTION_updateDiscoveryPreference:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRoute2ProviderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    const-string v0, "android.media.IMediaRoute2ProviderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IMediaRoute2ProviderService;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRoute2ProviderService;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 75
    packed-switch p0, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 111
    :pswitch_0
    const-string v0, "releaseSession"

    return-object v0

    .line 107
    :pswitch_1
    const-string v0, "setSessionVolume"

    return-object v0

    .line 103
    :pswitch_2
    const-string/jumbo v0, "transferToRoute"

    return-object v0

    .line 99
    :pswitch_3
    const-string v0, "deselectRoute"

    return-object v0

    .line 95
    :pswitch_4
    const-string v0, "selectRoute"

    return-object v0

    .line 91
    :pswitch_5
    const-string v0, "requestCreateSession"

    return-object v0

    .line 87
    :pswitch_6
    const-string v0, "setRouteVolume"

    return-object v0

    .line 83
    :pswitch_7
    const-string/jumbo v0, "updateDiscoveryPreference"

    return-object v0

    .line 79
    :pswitch_8
    const-string v0, "setCallback"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 70
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 399
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 122
    invoke-static {p1}, Landroid/media/IMediaRoute2ProviderService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.media.IMediaRoute2ProviderService"

    .line 127
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 128
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 138
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 242
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 134
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    return v10

    .line 233
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 235
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IMediaRoute2ProviderService$Stub;->releaseSession(JLjava/lang/String;)V

    .line 238
    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 223
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IMediaRoute2ProviderService$Stub;->setSessionVolume(JLjava/lang/String;I)V

    .line 228
    goto/16 :goto_0

    .line 209
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 211
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IMediaRoute2ProviderService$Stub;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 216
    goto/16 :goto_0

    .line 197
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 199
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IMediaRoute2ProviderService$Stub;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 204
    goto :goto_0

    .line 185
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 187
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IMediaRoute2ProviderService$Stub;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 192
    goto :goto_0

    .line 171
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 173
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 175
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 177
    .local v15, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 178
    .local v16, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IMediaRoute2ProviderService$Stub;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 180
    goto :goto_0

    .line 159
    .end local v12    # "_arg0":J
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Landroid/os/Bundle;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 161
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IMediaRoute2ProviderService$Stub;->setRouteVolume(JLjava/lang/String;I)V

    .line 166
    goto :goto_0

    .line 151
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_8
    sget-object v0, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteDiscoveryPreference;

    .line 152
    .local v0, "_arg0":Landroid/media/RouteDiscoveryPreference;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {v6, v0}, Landroid/media/IMediaRoute2ProviderService$Stub;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    .line 154
    goto :goto_0

    .line 143
    .end local v0    # "_arg0":Landroid/media/RouteDiscoveryPreference;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderServiceCallback;

    move-result-object v0

    .line 144
    .local v0, "_arg0":Landroid/media/IMediaRoute2ProviderServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {v6, v0}, Landroid/media/IMediaRoute2ProviderService$Stub;->setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V

    .line 146
    nop

    .line 245
    .end local v0    # "_arg0":Landroid/media/IMediaRoute2ProviderServiceCallback;
    :goto_0
    return v10

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
