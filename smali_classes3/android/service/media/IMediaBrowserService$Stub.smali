.class public abstract Landroid/service/media/IMediaBrowserService$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserService.java"

# interfaces
.implements Landroid/service/media/IMediaBrowserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/IMediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/IMediaBrowserService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.media.IMediaBrowserService"

.field static final greylist-max-o TRANSACTION_addSubscription:I = 0x6

.field static final greylist-max-o TRANSACTION_addSubscriptionDeprecated:I = 0x3

.field static final greylist-max-o TRANSACTION_connect:I = 0x1

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x2

.field static final greylist-max-o TRANSACTION_getMediaItem:I = 0x5

.field static final greylist-max-o TRANSACTION_removeSubscription:I = 0x7

.field static final greylist-max-o TRANSACTION_removeSubscriptionDeprecated:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.service.media.IMediaBrowserService"

    invoke-virtual {p0, p0, v0}, Landroid/service/media/IMediaBrowserService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    const-string v0, "android.service.media.IMediaBrowserService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/media/IMediaBrowserService;

    if-eqz v1, :cond_1

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/service/media/IMediaBrowserService;

    return-object v1

    .line 62
    :cond_1
    new-instance v1, Landroid/service/media/IMediaBrowserService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/media/IMediaBrowserService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 99
    :pswitch_0
    const-string/jumbo v0, "removeSubscription"

    return-object v0

    .line 95
    :pswitch_1
    const-string v0, "addSubscription"

    return-object v0

    .line 91
    :pswitch_2
    const-string v0, "getMediaItem"

    return-object v0

    .line 87
    :pswitch_3
    const-string/jumbo v0, "removeSubscriptionDeprecated"

    return-object v0

    .line 83
    :pswitch_4
    const-string v0, "addSubscriptionDeprecated"

    return-object v0

    .line 79
    :pswitch_5
    const-string v0, "disconnect"

    return-object v0

    .line 75
    :pswitch_6
    const-string v0, "connect"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 335
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 110
    invoke-static {p1}, Landroid/service/media/IMediaBrowserService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 114
    const-string v0, "android.service.media.IMediaBrowserService"

    .line 115
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 116
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 126
    packed-switch p1, :pswitch_data_1

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 122
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 197
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 201
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v4

    .line 202
    .local v4, "_arg2":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/media/IMediaBrowserService$Stub;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 204
    goto/16 :goto_0

    .line 183
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 187
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 189
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v5

    .line 190
    .local v5, "_arg3":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/media/IMediaBrowserService$Stub;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 192
    goto :goto_0

    .line 171
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 175
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v4

    .line 176
    .local v4, "_arg2":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/media/IMediaBrowserService$Stub;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 178
    goto :goto_0

    .line 161
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    .end local v4    # "_arg2":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v3

    .line 164
    .local v3, "_arg1":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Landroid/service/media/IMediaBrowserService$Stub;->removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 166
    goto :goto_0

    .line 151
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v3

    .line 154
    .restart local v3    # "_arg1":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3}, Landroid/service/media/IMediaBrowserService$Stub;->addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 156
    goto :goto_0

    .line 143
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v2

    .line 144
    .local v2, "_arg0":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/service/media/IMediaBrowserService$Stub;->disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 146
    goto :goto_0

    .line 131
    .end local v2    # "_arg0":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 135
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v4

    .line 136
    .restart local v4    # "_arg2":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/media/IMediaBrowserService$Stub;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 138
    nop

    .line 211
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
