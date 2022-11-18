.class public abstract Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;
.super Landroid/os/Binder;
.source "IVirtualDeviceActivityListener.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDeviceActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDeviceActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDisplayEmpty:I = 0x2

.field static final blacklist TRANSACTION_onTopActivityChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.companion.virtual.IVirtualDeviceActivityListener"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    const-string v0, "android.companion.virtual.IVirtualDeviceActivityListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/companion/virtual/IVirtualDeviceActivityListener;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/companion/virtual/IVirtualDeviceActivityListener;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 76
    :pswitch_0
    const-string/jumbo v0, "onDisplayEmpty"

    return-object v0

    .line 72
    :pswitch_1
    const-string/jumbo v0, "onTopActivityChanged"

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

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 87
    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 91
    const-string v0, "android.companion.virtual.IVirtualDeviceActivityListener"

    .line 92
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 103
    packed-switch p1, :pswitch_data_1

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 99
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 118
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->onDisplayEmpty(I)V

    .line 121
    goto :goto_0

    .line 108
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 111
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->onTopActivityChanged(ILandroid/content/ComponentName;)V

    .line 113
    nop

    .line 128
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :goto_0
    return v1

    nop

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
