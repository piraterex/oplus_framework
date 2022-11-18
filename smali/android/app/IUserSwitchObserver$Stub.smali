.class public abstract Landroid/app/IUserSwitchObserver$Stub;
.super Landroid/os/Binder;
.source "IUserSwitchObserver.java"

# interfaces
.implements Landroid/app/IUserSwitchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUserSwitchObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUserSwitchObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IUserSwitchObserver"

.field static final greylist-max-o TRANSACTION_onForegroundProfileSwitch:I = 0x3

.field static final greylist-max-o TRANSACTION_onLockedBootComplete:I = 0x4

.field static final greylist-max-o TRANSACTION_onUserSwitchComplete:I = 0x2

.field static final greylist-max-o TRANSACTION_onUserSwitching:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.app.IUserSwitchObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUserSwitchObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "android.app.IUserSwitchObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IUserSwitchObserver;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/app/IUserSwitchObserver;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Landroid/app/IUserSwitchObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUserSwitchObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_0
    const-string/jumbo v0, "onLockedBootComplete"

    return-object v0

    .line 70
    :pswitch_1
    const-string/jumbo v0, "onForegroundProfileSwitch"

    return-object v0

    .line 66
    :pswitch_2
    const-string/jumbo v0, "onUserSwitchComplete"

    return-object v0

    .line 62
    :pswitch_3
    const-string/jumbo v0, "onUserSwitching"

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

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 217
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 85
    invoke-static {p1}, Landroid/app/IUserSwitchObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 89
    const-string v0, "android.app.IUserSwitchObserver"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 101
    packed-switch p1, :pswitch_data_1

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 132
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/app/IUserSwitchObserver$Stub;->onLockedBootComplete(I)V

    .line 135
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/app/IUserSwitchObserver$Stub;->onForegroundProfileSwitch(I)V

    .line 127
    goto :goto_0

    .line 116
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/app/IUserSwitchObserver$Stub;->onUserSwitchComplete(I)V

    .line 119
    goto :goto_0

    .line 106
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 109
    .local v3, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2, v3}, Landroid/app/IUserSwitchObserver$Stub;->onUserSwitching(ILandroid/os/IRemoteCallback;)V

    .line 111
    nop

    .line 142
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IRemoteCallback;
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
