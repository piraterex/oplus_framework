.class public abstract Landroid/os/IExternalVibrationController$Stub;
.super Landroid/os/Binder;
.source "IExternalVibrationController.java"

# interfaces
.implements Landroid/os/IExternalVibrationController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IExternalVibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IExternalVibrationController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_mute:I = 0x1

.field static final blacklist TRANSACTION_unmute:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.os.IExternalVibrationController"

    invoke-virtual {p0, p0, v0}, Landroid/os/IExternalVibrationController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IExternalVibrationController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    const-string v0, "android.os.IExternalVibrationController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IExternalVibrationController;

    if-eqz v1, :cond_1

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/os/IExternalVibrationController;

    return-object v1

    .line 63
    :cond_1
    new-instance v1, Landroid/os/IExternalVibrationController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IExternalVibrationController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_0
    const-string/jumbo v0, "unmute"

    return-object v0

    .line 76
    :pswitch_1
    const-string/jumbo v0, "mute"

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

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/os/IExternalVibrationController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    const-string v0, "android.os.IExternalVibrationController"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 107
    packed-switch p1, :pswitch_data_1

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 103
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 118
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/IExternalVibrationController$Stub;->unmute()Z

    move-result v2

    .line 119
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    goto :goto_0

    .line 111
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/IExternalVibrationController$Stub;->mute()Z

    move-result v2

    .line 112
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 114
    nop

    .line 128
    .end local v2    # "_result":Z
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
