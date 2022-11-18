.class public abstract Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;
.super Landroid/os/Binder;
.source "IOptionsRequestCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IOptionsRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IOptionsRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_respondToCapabilityRequest:I = 0x1

.field static final blacklist TRANSACTION_respondToCapabilityRequestWithError:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.telephony.ims.aidl.IOptionsRequestCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    const-string v0, "android.telephony.ims.aidl.IOptionsRequestCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    return-object v1

    .line 58
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 75
    :pswitch_0
    const-string/jumbo v0, "respondToCapabilityRequestWithError"

    return-object v0

    .line 71
    :pswitch_1
    const-string/jumbo v0, "respondToCapabilityRequest"

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

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 86
    invoke-static {p1}, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 90
    const-string v0, "android.telephony.ims.aidl.IOptionsRequestCallback"

    .line 91
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 102
    packed-switch p1, :pswitch_data_1

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 98
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
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
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;->respondToCapabilityRequestWithError(ILjava/lang/String;)V

    .line 122
    goto :goto_0

    .line 107
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2
    sget-object v2, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsContactUceCapability;

    .line 109
    .local v2, "_arg0":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 110
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;->respondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V

    .line 112
    nop

    .line 129
    .end local v2    # "_arg0":Landroid/telephony/ims/RcsContactUceCapability;
    .end local v3    # "_arg1":Z
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
