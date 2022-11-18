.class public abstract Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;
.super Landroid/os/Binder;
.source "IImsRegistrationCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRegistrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRegistrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDeregistered:I = 0x3

.field static final blacklist TRANSACTION_onRegistered:I = 0x1

.field static final blacklist TRANSACTION_onRegistering:I = 0x2

.field static final blacklist TRANSACTION_onSubscriberAssociatedUriChanged:I = 0x5

.field static final blacklist TRANSACTION_onTechnologyChangeFailed:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    return-object v1

    .line 56
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_0
    const-string/jumbo v0, "onSubscriberAssociatedUriChanged"

    return-object v0

    .line 81
    :pswitch_1
    const-string/jumbo v0, "onTechnologyChangeFailed"

    return-object v0

    .line 77
    :pswitch_2
    const-string/jumbo v0, "onDeregistered"

    return-object v0

    .line 73
    :pswitch_3
    const-string/jumbo v0, "onRegistering"

    return-object v0

    .line 69
    :pswitch_4
    const-string/jumbo v0, "onRegistered"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 248
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 112
    packed-switch p1, :pswitch_data_1

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 151
    :pswitch_1
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 152
    .local v2, "_arg0":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 154
    goto :goto_0

    .line 141
    .end local v2    # "_arg0":[Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 144
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 146
    goto :goto_0

    .line 133
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_3
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 134
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 136
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_4
    sget-object v2, Landroid/telephony/ims/ImsRegistrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 126
    .local v2, "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 128
    goto :goto_0

    .line 117
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    :pswitch_5
    sget-object v2, Landroid/telephony/ims/ImsRegistrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 118
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 120
    nop

    .line 161
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
