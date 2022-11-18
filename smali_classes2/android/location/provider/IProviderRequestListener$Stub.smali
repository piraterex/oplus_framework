.class public abstract Landroid/location/provider/IProviderRequestListener$Stub;
.super Landroid/os/Binder;
.source "IProviderRequestListener.java"

# interfaces
.implements Landroid/location/provider/IProviderRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/IProviderRequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/IProviderRequestListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onProviderRequestChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.location.provider.IProviderRequestListener"

    invoke-virtual {p0, p0, v0}, Landroid/location/provider/IProviderRequestListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/location/provider/IProviderRequestListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    const-string v0, "android.location.provider.IProviderRequestListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/provider/IProviderRequestListener;

    if-eqz v1, :cond_1

    .line 38
    move-object v1, v0

    check-cast v1, Landroid/location/provider/IProviderRequestListener;

    return-object v1

    .line 40
    :cond_1
    new-instance v1, Landroid/location/provider/IProviderRequestListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/provider/IProviderRequestListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 49
    packed-switch p0, :pswitch_data_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 53
    :pswitch_0
    const-string v0, "onProviderRequestChanged"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 44
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 64
    invoke-static {p1}, Landroid/location/provider/IProviderRequestListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 68
    const-string v0, "android.location.provider.IProviderRequestListener"

    .line 69
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 80
    packed-switch p1, :pswitch_data_1

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 76
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v1

    .line 85
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/location/provider/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/provider/ProviderRequest;

    .line 88
    .local v3, "_arg1":Landroid/location/provider/ProviderRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 89
    invoke-virtual {p0, v2, v3}, Landroid/location/provider/IProviderRequestListener$Stub;->onProviderRequestChanged(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    .line 90
    nop

    .line 97
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/location/provider/ProviderRequest;
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
