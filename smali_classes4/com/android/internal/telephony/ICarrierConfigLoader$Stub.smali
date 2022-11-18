.class public abstract Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;
.super Landroid/os/Binder;
.source "ICarrierConfigLoader.java"

# interfaces
.implements Lcom/android/internal/telephony/ICarrierConfigLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ICarrierConfigLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ICarrierConfigLoader"

.field static final greylist-max-o TRANSACTION_getConfigForSubId:I = 0x1

.field static final blacklist TRANSACTION_getConfigForSubIdWithFeature:I = 0x2

.field static final greylist-max-o TRANSACTION_getDefaultCarrierServicePackageName:I = 0x6

.field static final greylist-max-o TRANSACTION_notifyConfigChangedForSubId:I = 0x4

.field static final blacklist TRANSACTION_overrideConfig:I = 0x3

.field static final greylist-max-o TRANSACTION_updateConfigForPhoneId:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierConfigLoader;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ICarrierConfigLoader;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ICarrierConfigLoader;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_0
    const-string v0, "getDefaultCarrierServicePackageName"

    return-object v0

    .line 88
    :pswitch_1
    const-string/jumbo v0, "updateConfigForPhoneId"

    return-object v0

    .line 84
    :pswitch_2
    const-string/jumbo v0, "notifyConfigChangedForSubId"

    return-object v0

    .line 80
    :pswitch_3
    const-string/jumbo v0, "overrideConfig"

    return-object v0

    .line 76
    :pswitch_4
    const-string v0, "getConfigForSubIdWithFeature"

    return-object v0

    .line 72
    :pswitch_5
    const-string v0, "getConfigForSubId"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
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

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 325
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 119
    packed-switch p1, :pswitch_data_1

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 182
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    goto :goto_0

    .line 172
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_0

    .line 163
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->notifyConfigChangedForSubId(I)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_0

    .line 150
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 154
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 155
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->overrideConfig(ILandroid/os/PersistableBundle;Z)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    .end local v4    # "_arg2":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getConfigForSubIdWithFeature(ILjava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 143
    .local v5, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 145
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/PersistableBundle;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getConfigForSubId(ILjava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 129
    .local v4, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    nop

    .line 192
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/PersistableBundle;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
