.class public abstract Landroid/location/IOplusLocationManager$Stub;
.super Landroid/os/Binder;
.source "IOplusLocationManager.java"

# interfaces
.implements Landroid/location/IOplusLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IOplusLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IOplusLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInUsePackagesList:I = 0x1

.field static final blacklist TRANSACTION_setDebugDump:I = 0x4

.field static final blacklist TRANSACTION_setDebugOff:I = 0x3

.field static final blacklist TRANSACTION_setDebugOn:I = 0x2


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.location.IOplusLocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/IOplusLocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/location/IOplusLocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "android.location.IOplusLocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/IOplusLocationManager;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/location/IOplusLocationManager;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Landroid/location/IOplusLocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IOplusLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "setDebugDump"

    return-object v0

    .line 70
    :pswitch_1
    const-string v0, "setDebugOff"

    return-object v0

    .line 66
    :pswitch_2
    const-string v0, "setDebugOn"

    return-object v0

    .line 62
    :pswitch_3
    const-string v0, "getInUsePackagesList"

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
    invoke-static {p1}, Landroid/location/IOplusLocationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 89
    const-string v0, "android.location.IOplusLocationManager"

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

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 124
    :pswitch_1
    invoke-virtual {p0}, Landroid/location/IOplusLocationManager$Stub;->setDebugDump()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_0

    .line 118
    :pswitch_2
    invoke-virtual {p0}, Landroid/location/IOplusLocationManager$Stub;->setDebugOff()V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    goto :goto_0

    .line 112
    :pswitch_3
    invoke-virtual {p0}, Landroid/location/IOplusLocationManager$Stub;->setDebugOn()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_0

    .line 105
    :pswitch_4
    invoke-virtual {p0}, Landroid/location/IOplusLocationManager$Stub;->getInUsePackagesList()Ljava/util/List;

    move-result-object v2

    .line 106
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 108
    nop

    .line 133
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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
