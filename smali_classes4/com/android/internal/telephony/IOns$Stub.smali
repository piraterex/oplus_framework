.class public abstract Lcom/android/internal/telephony/IOns$Stub;
.super Landroid/os/Binder;
.source "IOns.java"

# interfaces
.implements Lcom/android/internal/telephony/IOns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IOns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IOns$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getPreferredDataSubscriptionId:I = 0x4

.field static final blacklist TRANSACTION_isEnabled:I = 0x2

.field static final blacklist TRANSACTION_setEnable:I = 0x1

.field static final blacklist TRANSACTION_setPreferredDataSubscriptionId:I = 0x3

.field static final blacklist TRANSACTION_updateAvailableNetworks:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 105
    const-string v0, "com.android.internal.telephony.IOns"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IOns$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOns;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 113
    if-nez p0, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    const-string v0, "com.android.internal.telephony.IOns"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 117
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IOns;

    if-eqz v1, :cond_1

    .line 118
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IOns;

    return-object v1

    .line 120
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IOns$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IOns$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 129
    packed-switch p0, :pswitch_data_0

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 149
    :pswitch_0
    const-string/jumbo v0, "updateAvailableNetworks"

    return-object v0

    .line 145
    :pswitch_1
    const-string v0, "getPreferredDataSubscriptionId"

    return-object v0

    .line 141
    :pswitch_2
    const-string/jumbo v0, "setPreferredDataSubscriptionId"

    return-object v0

    .line 137
    :pswitch_3
    const-string v0, "isEnabled"

    return-object v0

    .line 133
    :pswitch_4
    const-string/jumbo v0, "setEnable"

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

    .line 124
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 428
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 160
    invoke-static {p1}, Lcom/android/internal/telephony/IOns$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 164
    const-string v0, "com.android.internal.telephony.IOns"

    .line 165
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 166
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 176
    packed-switch p1, :pswitch_data_1

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 172
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    return v1

    .line 230
    :pswitch_1
    sget-object v2, Landroid/telephony/AvailableNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 232
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;

    move-result-object v3

    .line 234
    .local v3, "_arg1":Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IOns$Stub;->updateAvailableNetworks(Ljava/util/List;Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto :goto_0

    .line 218
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IOns$Stub;->getPreferredDataSubscriptionId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 223
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    goto :goto_0

    .line 203
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 207
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    move-result-object v4

    .line 209
    .local v4, "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/IOns$Stub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    goto :goto_0

    .line 193
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IOns$Stub;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 196
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 198
    goto :goto_0

    .line 181
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 183
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IOns$Stub;->setEnable(ZLjava/lang/String;)Z

    move-result v4

    .line 186
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 188
    nop

    .line 245
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :goto_0
    return v1

    nop

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
