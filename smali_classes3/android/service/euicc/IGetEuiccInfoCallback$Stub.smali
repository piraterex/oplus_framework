.class public abstract Landroid/service/euicc/IGetEuiccInfoCallback$Stub;
.super Landroid/os/Binder;
.source "IGetEuiccInfoCallback.java"

# interfaces
.implements Landroid/service/euicc/IGetEuiccInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IGetEuiccInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IGetEuiccInfoCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.euicc.IGetEuiccInfoCallback"

.field static final greylist-max-o TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.service.euicc.IGetEuiccInfoCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/euicc/IGetEuiccInfoCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEuiccInfoCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    const-string v0, "android.service.euicc.IGetEuiccInfoCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/euicc/IGetEuiccInfoCallback;

    if-eqz v1, :cond_1

    .line 38
    move-object v1, v0

    check-cast v1, Landroid/service/euicc/IGetEuiccInfoCallback;

    return-object v1

    .line 40
    :cond_1
    new-instance v1, Landroid/service/euicc/IGetEuiccInfoCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/euicc/IGetEuiccInfoCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v0, "onSuccess"

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

    .line 44
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 64
    invoke-static {p1}, Landroid/service/euicc/IGetEuiccInfoCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 68
    const-string v0, "android.service.euicc.IGetEuiccInfoCallback"

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

    .line 92
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
    sget-object v2, Landroid/telephony/euicc/EuiccInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/euicc/EuiccInfo;

    .line 86
    .local v2, "_arg0":Landroid/telephony/euicc/EuiccInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    invoke-virtual {p0, v2}, Landroid/service/euicc/IGetEuiccInfoCallback$Stub;->onSuccess(Landroid/telephony/euicc/EuiccInfo;)V

    .line 88
    nop

    .line 95
    .end local v2    # "_arg0":Landroid/telephony/euicc/EuiccInfo;
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
