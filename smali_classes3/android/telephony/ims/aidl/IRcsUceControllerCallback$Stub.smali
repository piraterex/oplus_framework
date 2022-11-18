.class public abstract Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;
.super Landroid/os/Binder;
.source "IRcsUceControllerCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IRcsUceControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCapabilitiesReceived:I = 0x1

.field static final blacklist TRANSACTION_onComplete:I = 0x2

.field static final blacklist TRANSACTION_onError:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.telephony.ims.aidl.IRcsUceControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "android.telephony.ims.aidl.IRcsUceControllerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 59
    packed-switch p0, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_0
    const-string/jumbo v0, "onError"

    return-object v0

    .line 67
    :pswitch_1
    const-string/jumbo v0, "onComplete"

    return-object v0

    .line 63
    :pswitch_2
    const-string/jumbo v0, "onCapabilitiesReceived"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 54
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 188
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 82
    invoke-static {p1}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 86
    const-string v0, "android.telephony.ims.aidl.IRcsUceControllerCallback"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 98
    packed-switch p1, :pswitch_data_1

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 116
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 119
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;->onError(IJ)V

    .line 121
    goto :goto_0

    .line 110
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_2
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;->onComplete()V

    .line 111
    goto :goto_0

    .line 103
    :pswitch_3
    sget-object v2, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 104
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;->onCapabilitiesReceived(Ljava/util/List;)V

    .line 106
    nop

    .line 128
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
