.class public abstract Landroid/se/omapi/ISecureElementListener$Stub;
.super Landroid/os/Binder;
.source "ISecureElementListener.java"

# interfaces
.implements Landroid/se/omapi/ISecureElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String;

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 143
    const-string v0, "android$se$omapi$ISecureElementListener"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/se/omapi/ISecureElementListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementListener$Stub;->markVintfStability()V

    .line 39
    sget-object v0, Landroid/se/omapi/ISecureElementListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/se/omapi/ISecureElementListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    sget-object v0, Landroid/se/omapi/ISecureElementListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/se/omapi/ISecureElementListener;

    if-eqz v1, :cond_1

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/se/omapi/ISecureElementListener;

    return-object v1

    .line 54
    :cond_1
    new-instance v1, Landroid/se/omapi/ISecureElementListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/se/omapi/ISecureElementListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 58
    return-object p0
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

    .line 62
    sget-object v0, Landroid/se/omapi/ISecureElementListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 63
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 83
    goto :goto_0

    .line 67
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return v1

    .line 72
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementListener$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return v1

    .line 78
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementListener$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1

    .line 87
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
