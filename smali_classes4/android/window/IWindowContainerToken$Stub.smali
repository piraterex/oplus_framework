.class public abstract Landroid/window/IWindowContainerToken$Stub;
.super Landroid/os/Binder;
.source "IWindowContainerToken.java"

# interfaces
.implements Landroid/window/IWindowContainerToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IWindowContainerToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IWindowContainerToken$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "android.window.IWindowContainerToken"

    invoke-virtual {p0, p0, v0}, Landroid/window/IWindowContainerToken$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerToken;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    const-string v0, "android.window.IWindowContainerToken"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/window/IWindowContainerToken;

    if-eqz v1, :cond_1

    .line 39
    move-object v1, v0

    check-cast v1, Landroid/window/IWindowContainerToken;

    return-object v1

    .line 41
    :cond_1
    new-instance v1, Landroid/window/IWindowContainerToken$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IWindowContainerToken$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 50
    nop

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 45
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 61
    invoke-static {p1}, Landroid/window/IWindowContainerToken$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const-string v0, "android.window.IWindowContainerToken"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 74
    goto :goto_0

    .line 70
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x1

    return v1

    .line 78
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch
.end method
