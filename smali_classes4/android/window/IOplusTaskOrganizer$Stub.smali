.class public abstract Landroid/window/IOplusTaskOrganizer$Stub;
.super Landroid/os/Binder;
.source "IOplusTaskOrganizer.java"

# interfaces
.implements Landroid/window/IOplusTaskOrganizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IOplusTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IOplusTaskOrganizer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_updateStartingWindowExtendedInfo:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "android.window.IOplusTaskOrganizer"

    invoke-virtual {p0, p0, v0}, Landroid/window/IOplusTaskOrganizer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/window/IOplusTaskOrganizer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    const-string v0, "android.window.IOplusTaskOrganizer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/window/IOplusTaskOrganizer;

    if-eqz v1, :cond_1

    .line 37
    move-object v1, v0

    check-cast v1, Landroid/window/IOplusTaskOrganizer;

    return-object v1

    .line 39
    :cond_1
    new-instance v1, Landroid/window/IOplusTaskOrganizer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IOplusTaskOrganizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 48
    packed-switch p0, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 52
    :pswitch_0
    const-string/jumbo v0, "updateStartingWindowExtendedInfo"

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

    .line 43
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 63
    invoke-static {p1}, Landroid/window/IOplusTaskOrganizer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 67
    const-string v0, "android.window.IOplusTaskOrganizer"

    .line 68
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 79
    packed-switch p1, :pswitch_data_1

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 75
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return v1

    .line 84
    :pswitch_1
    sget-object v2, Landroid/window/OplusStartingWindowExtendedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/OplusStartingWindowExtendedInfo;

    .line 86
    .local v2, "_arg0":Landroid/window/OplusStartingWindowExtendedInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 87
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    invoke-virtual {p0, v2, v3}, Landroid/window/IOplusTaskOrganizer$Stub;->updateStartingWindowExtendedInfo(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V

    .line 89
    nop

    .line 96
    .end local v2    # "_arg0":Landroid/window/OplusStartingWindowExtendedInfo;
    .end local v3    # "_arg1":Landroid/os/IBinder;
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
