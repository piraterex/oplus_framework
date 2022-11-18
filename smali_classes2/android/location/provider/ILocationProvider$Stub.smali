.class public abstract Landroid/location/provider/ILocationProvider$Stub;
.super Landroid/os/Binder;
.source "ILocationProvider.java"

# interfaces
.implements Landroid/location/provider/ILocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ILocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ILocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_flush:I = 0x3

.field static final blacklist TRANSACTION_sendExtraCommand:I = 0x4

.field static final blacklist TRANSACTION_setLocationProviderManager:I = 0x1

.field static final blacklist TRANSACTION_setRequest:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.location.provider.ILocationProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/provider/ILocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "android.location.provider.ILocationProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/provider/ILocationProvider;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/location/provider/ILocationProvider;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Landroid/location/provider/ILocationProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/provider/ILocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_0
    const-string v0, "sendExtraCommand"

    return-object v0

    .line 74
    :pswitch_1
    const-string v0, "flush"

    return-object v0

    .line 70
    :pswitch_2
    const-string v0, "setRequest"

    return-object v0

    .line 66
    :pswitch_3
    const-string v0, "setLocationProviderManager"

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

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 216
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    const-string v0, "android.location.provider.ILocationProvider"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 105
    packed-switch p1, :pswitch_data_1

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 131
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 134
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/location/provider/ILocationProvider$Stub;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p0}, Landroid/location/provider/ILocationProvider$Stub;->flush()V

    .line 126
    goto :goto_0

    .line 118
    :pswitch_3
    sget-object v2, Landroid/location/provider/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/provider/ProviderRequest;

    .line 119
    .local v2, "_arg0":Landroid/location/provider/ProviderRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProvider$Stub;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 121
    goto :goto_0

    .line 110
    .end local v2    # "_arg0":Landroid/location/provider/ProviderRequest;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/provider/ILocationProviderManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProviderManager;

    move-result-object v2

    .line 111
    .local v2, "_arg0":Landroid/location/provider/ILocationProviderManager;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProvider$Stub;->setLocationProviderManager(Landroid/location/provider/ILocationProviderManager;)V

    .line 113
    nop

    .line 143
    .end local v2    # "_arg0":Landroid/location/provider/ILocationProviderManager;
    :goto_0
    return v1

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
