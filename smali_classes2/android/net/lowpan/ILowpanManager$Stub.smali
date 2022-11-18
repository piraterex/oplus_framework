.class public abstract Landroid/net/lowpan/ILowpanManager$Stub;
.super Landroid/os/Binder;
.source "ILowpanManager.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addInterface:I = 0x5

.field static final blacklist TRANSACTION_addListener:I = 0x3

.field static final blacklist TRANSACTION_getInterface:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceList:I = 0x2

.field static final blacklist TRANSACTION_removeInterface:I = 0x6

.field static final blacklist TRANSACTION_removeListener:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "android.net.lowpan.ILowpanManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/lowpan/ILowpanManager;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/net/lowpan/ILowpanManager;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Landroid/net/lowpan/ILowpanManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_0
    const-string v0, "removeInterface"

    return-object v0

    .line 86
    :pswitch_1
    const-string v0, "addInterface"

    return-object v0

    .line 82
    :pswitch_2
    const-string v0, "removeListener"

    return-object v0

    .line 78
    :pswitch_3
    const-string v0, "addListener"

    return-object v0

    .line 74
    :pswitch_4
    const-string v0, "getInterfaceList"

    return-object v0

    .line 70
    :pswitch_5
    const-string v0, "getInterface"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 299
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Landroid/net/lowpan/ILowpanManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    const-string v0, "android.net.lowpan.ILowpanManager"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 117
    packed-switch p1, :pswitch_data_1

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 113
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v1

    .line 166
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v2

    .line 167
    .local v2, "_arg0":Landroid/net/lowpan/ILowpanInterface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanManager$Stub;->removeInterface(Landroid/net/lowpan/ILowpanInterface;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":Landroid/net/lowpan/ILowpanInterface;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v2

    .line 158
    .restart local v2    # "_arg0":Landroid/net/lowpan/ILowpanInterface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanManager$Stub;->addInterface(Landroid/net/lowpan/ILowpanInterface;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_0

    .line 148
    .end local v2    # "_arg0":Landroid/net/lowpan/ILowpanInterface;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/lowpan/ILowpanManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManagerListener;

    move-result-object v2

    .line 149
    .local v2, "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanManager$Stub;->removeListener(Landroid/net/lowpan/ILowpanManagerListener;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_0

    .line 139
    .end local v2    # "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/lowpan/ILowpanManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManagerListener;

    move-result-object v2

    .line 140
    .restart local v2    # "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanManager$Stub;->addListener(Landroid/net/lowpan/ILowpanManagerListener;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    goto :goto_0

    .line 131
    .end local v2    # "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    :pswitch_5
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanManager$Stub;->getInterfaceList()[Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 134
    goto :goto_0

    .line 122
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanManager$Stub;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v3

    .line 125
    .local v3, "_result":Landroid/net/lowpan/ILowpanInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 127
    nop

    .line 177
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/lowpan/ILowpanInterface;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
