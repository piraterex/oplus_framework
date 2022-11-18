.class public abstract Landroid/content/ISyncContext$Stub;
.super Landroid/os/Binder;
.source "ISyncContext.java"

# interfaces
.implements Landroid/content/ISyncContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ISyncContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncContext$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.ISyncContext"

.field static final greylist-max-o TRANSACTION_onFinished:I = 0x2

.field static final greylist-max-o TRANSACTION_sendHeartbeat:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.content.ISyncContext"

    invoke-virtual {p0, p0, v0}, Landroid/content/ISyncContext$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "android.content.ISyncContext"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/ISyncContext;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/content/ISyncContext;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Landroid/content/ISyncContext$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/ISyncContext$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 72
    :pswitch_0
    const-string/jumbo v0, "onFinished"

    return-object v0

    .line 68
    :pswitch_1
    const-string/jumbo v0, "sendHeartbeat"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 83
    invoke-static {p1}, Landroid/content/ISyncContext$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 87
    const-string v0, "android.content.ISyncContext"

    .line 88
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 89
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 99
    packed-switch p1, :pswitch_data_1

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 95
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 110
    :pswitch_1
    sget-object v2, Landroid/content/SyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncResult;

    .line 111
    .local v2, "_arg0":Landroid/content/SyncResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Landroid/content/ISyncContext$Stub;->onFinished(Landroid/content/SyncResult;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_0

    .line 103
    .end local v2    # "_arg0":Landroid/content/SyncResult;
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/ISyncContext$Stub;->sendHeartbeat()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    nop

    .line 121
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
