.class public abstract Lcom/oplus/app/ITerminateObserver$Stub;
.super Landroid/os/Binder;
.source "ITerminateObserver.java"

# interfaces
.implements Lcom/oplus/app/ITerminateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/ITerminateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/ITerminateObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onRequestTerminate:I = 0x2

.field static final blacklist TRANSACTION_onTerminateStateChanged:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.oplus.app.ITerminateObserver"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/app/ITerminateObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/app/ITerminateObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    const-string v0, "com.oplus.app.ITerminateObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/app/ITerminateObserver;

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Lcom/oplus/app/ITerminateObserver;

    return-object v1

    .line 56
    :cond_1
    new-instance v1, Lcom/oplus/app/ITerminateObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/app/ITerminateObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_0
    const-string/jumbo v0, "onRequestTerminate"

    return-object v0

    .line 69
    :pswitch_1
    const-string/jumbo v0, "onTerminateStateChanged"

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

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Lcom/oplus/app/ITerminateObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    const-string v0, "com.oplus.app.ITerminateObserver"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 100
    packed-switch p1, :pswitch_data_1

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 117
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2, v3}, Lcom/oplus/app/ITerminateObserver$Stub;->onRequestTerminate(ILjava/lang/String;)V

    .line 122
    goto :goto_0

    .line 105
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 109
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 110
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/app/ITerminateObserver$Stub;->onTerminateStateChanged(IIZ)V

    .line 112
    nop

    .line 129
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
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
