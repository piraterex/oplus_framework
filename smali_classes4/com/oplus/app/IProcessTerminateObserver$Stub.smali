.class public abstract Lcom/oplus/app/IProcessTerminateObserver$Stub;
.super Landroid/os/Binder;
.source "IProcessTerminateObserver.java"

# interfaces
.implements Lcom/oplus/app/IProcessTerminateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/IProcessTerminateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/IProcessTerminateObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onProcessTerminate:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.oplus.app.IProcessTerminateObserver"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/app/IProcessTerminateObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IProcessTerminateObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.oplus.app.IProcessTerminateObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/app/IProcessTerminateObserver;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/oplus/app/IProcessTerminateObserver;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/oplus/app/IProcessTerminateObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/app/IProcessTerminateObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static whitelist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 54
    packed-switch p0, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 58
    :pswitch_0
    const-string/jumbo v0, "onProcessTerminate"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
    return-object p0
.end method

.method public whitelist getMaxTransactionId()I
    .locals 1

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 69
    invoke-static {p1}, Lcom/oplus/app/IProcessTerminateObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 73
    const-string v0, "com.oplus.app.IProcessTerminateObserver"

    .line 74
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 85
    packed-switch p1, :pswitch_data_1

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 81
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 90
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, v2}, Lcom/oplus/app/IProcessTerminateObserver$Stub;->onProcessTerminate(Ljava/lang/String;)V

    .line 93
    nop

    .line 100
    .end local v2    # "_arg0":Ljava/lang/String;
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
