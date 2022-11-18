.class public abstract Landroid/media/IMediaRouter2$Stub;
.super Landroid/os/Binder;
.source "IMediaRouter2.java"

# interfaces
.implements Landroid/media/IMediaRouter2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouter2$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyRouterRegistered:I = 0x1

.field static final blacklist TRANSACTION_notifyRoutesAdded:I = 0x2

.field static final blacklist TRANSACTION_notifyRoutesChanged:I = 0x4

.field static final blacklist TRANSACTION_notifyRoutesRemoved:I = 0x3

.field static final blacklist TRANSACTION_notifySessionCreated:I = 0x5

.field static final blacklist TRANSACTION_notifySessionInfoChanged:I = 0x6

.field static final blacklist TRANSACTION_notifySessionReleased:I = 0x7

.field static final blacklist TRANSACTION_requestCreateSessionByManager:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.media.IMediaRouter2"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouter2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    const-string v0, "android.media.IMediaRouter2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IMediaRouter2;

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRouter2;

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Landroid/media/IMediaRouter2$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRouter2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 106
    :pswitch_0
    const-string v0, "requestCreateSessionByManager"

    return-object v0

    .line 102
    :pswitch_1
    const-string v0, "notifySessionReleased"

    return-object v0

    .line 98
    :pswitch_2
    const-string v0, "notifySessionInfoChanged"

    return-object v0

    .line 94
    :pswitch_3
    const-string v0, "notifySessionCreated"

    return-object v0

    .line 90
    :pswitch_4
    const-string v0, "notifyRoutesChanged"

    return-object v0

    .line 86
    :pswitch_5
    const-string v0, "notifyRoutesRemoved"

    return-object v0

    .line 82
    :pswitch_6
    const-string v0, "notifyRoutesAdded"

    return-object v0

    .line 78
    :pswitch_7
    const-string v0, "notifyRouterRegistered"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 345
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 117
    invoke-static {p1}, Landroid/media/IMediaRouter2$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 121
    const-string v0, "android.media.IMediaRouter2"

    .line 122
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 123
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 133
    packed-switch p1, :pswitch_data_1

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 198
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 200
    .local v2, "_arg0":J
    sget-object v4, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RoutingSessionInfo;

    .line 202
    .local v4, "_arg1":Landroid/media/RoutingSessionInfo;
    sget-object v5, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 203
    .local v5, "_arg2":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/IMediaRouter2$Stub;->requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 205
    goto :goto_0

    .line 190
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/media/RoutingSessionInfo;
    .end local v5    # "_arg2":Landroid/media/MediaRoute2Info;
    :pswitch_2
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 191
    .local v2, "_arg0":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2$Stub;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 193
    goto :goto_0

    .line 182
    .end local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    :pswitch_3
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 183
    .restart local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2$Stub;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V

    .line 185
    goto :goto_0

    .line 172
    .end local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .local v2, "_arg0":I
    sget-object v3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 175
    .local v3, "_arg1":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2$Stub;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V

    .line 177
    goto :goto_0

    .line 164
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/RoutingSessionInfo;
    :pswitch_5
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 165
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2$Stub;->notifyRoutesChanged(Ljava/util/List;)V

    .line 167
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :pswitch_6
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2$Stub;->notifyRoutesRemoved(Ljava/util/List;)V

    .line 159
    goto :goto_0

    .line 148
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :pswitch_7
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 149
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2$Stub;->notifyRoutesAdded(Ljava/util/List;)V

    .line 151
    goto :goto_0

    .line 138
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :pswitch_8
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 140
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    sget-object v3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 141
    .restart local v3    # "_arg1":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2$Stub;->notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 143
    nop

    .line 212
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    .end local v3    # "_arg1":Landroid/media/RoutingSessionInfo;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
