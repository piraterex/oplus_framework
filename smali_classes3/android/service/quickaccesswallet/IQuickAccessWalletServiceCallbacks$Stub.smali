.class public abstract Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;
.super Landroid/os/Binder;
.source "IQuickAccessWalletServiceCallbacks.java"

# interfaces
.implements Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onGetWalletCardsFailure:I = 0x2

.field static final blacklist TRANSACTION_onGetWalletCardsSuccess:I = 0x1

.field static final blacklist TRANSACTION_onTargetActivityPendingIntentReceived:I = 0x4

.field static final blacklist TRANSACTION_onWalletServiceEvent:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletServiceCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletServiceCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_0
    const-string/jumbo v0, "onTargetActivityPendingIntentReceived"

    return-object v0

    .line 80
    :pswitch_1
    const-string/jumbo v0, "onWalletServiceEvent"

    return-object v0

    .line 76
    :pswitch_2
    const-string/jumbo v0, "onGetWalletCardsFailure"

    return-object v0

    .line 72
    :pswitch_3
    const-string/jumbo v0, "onGetWalletCardsSuccess"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 229
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletServiceCallbacks"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 111
    packed-switch p1, :pswitch_data_1

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 140
    :pswitch_1
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 141
    .local v2, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V

    .line 143
    goto :goto_0

    .line 132
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_2
    sget-object v2, Landroid/service/quickaccesswallet/WalletServiceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 133
    .local v2, "_arg0":Landroid/service/quickaccesswallet/WalletServiceEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    .line 135
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/WalletServiceEvent;
    :pswitch_3
    sget-object v2, Landroid/service/quickaccesswallet/GetWalletCardsError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/GetWalletCardsError;

    .line 125
    .local v2, "_arg0":Landroid/service/quickaccesswallet/GetWalletCardsError;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    .line 127
    goto :goto_0

    .line 116
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/GetWalletCardsError;
    :pswitch_4
    sget-object v2, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 117
    .local v2, "_arg0":Landroid/service/quickaccesswallet/GetWalletCardsResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    .line 119
    nop

    .line 150
    .end local v2    # "_arg0":Landroid/service/quickaccesswallet/GetWalletCardsResponse;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
