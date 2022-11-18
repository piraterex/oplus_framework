.class public abstract Landroid/net/vcn/IVcnManagementService$Stub;
.super Landroid/os/Binder;
.source "IVcnManagementService.java"

# interfaces
.implements Landroid/net/vcn/IVcnManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/IVcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/IVcnManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addVcnUnderlyingNetworkPolicyListener:I = 0x4

.field static final blacklist TRANSACTION_clearVcnConfig:I = 0x2

.field static final blacklist TRANSACTION_getConfiguredSubscriptionGroups:I = 0x3

.field static final blacklist TRANSACTION_getUnderlyingNetworkPolicy:I = 0x6

.field static final blacklist TRANSACTION_registerVcnStatusCallback:I = 0x7

.field static final blacklist TRANSACTION_removeVcnUnderlyingNetworkPolicyListener:I = 0x5

.field static final blacklist TRANSACTION_setVcnConfig:I = 0x1

.field static final blacklist TRANSACTION_unregisterVcnStatusCallback:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.net.vcn.IVcnManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/net/vcn/IVcnManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnManagementService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    const-string v0, "android.net.vcn.IVcnManagementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/vcn/IVcnManagementService;

    if-eqz v1, :cond_1

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/net/vcn/IVcnManagementService;

    return-object v1

    .line 63
    :cond_1
    new-instance v1, Landroid/net/vcn/IVcnManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/vcn/IVcnManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_0
    const-string/jumbo v0, "unregisterVcnStatusCallback"

    return-object v0

    .line 100
    :pswitch_1
    const-string v0, "registerVcnStatusCallback"

    return-object v0

    .line 96
    :pswitch_2
    const-string v0, "getUnderlyingNetworkPolicy"

    return-object v0

    .line 92
    :pswitch_3
    const-string v0, "removeVcnUnderlyingNetworkPolicyListener"

    return-object v0

    .line 88
    :pswitch_4
    const-string v0, "addVcnUnderlyingNetworkPolicyListener"

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "getConfiguredSubscriptionGroups"

    return-object v0

    .line 80
    :pswitch_6
    const-string v0, "clearVcnConfig"

    return-object v0

    .line 76
    :pswitch_7
    const-string v0, "setVcnConfig"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
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

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 385
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 115
    invoke-static {p1}, Landroid/net/vcn/IVcnManagementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 119
    const-string v0, "android.net.vcn.IVcnManagementService"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 131
    packed-switch p1, :pswitch_data_1

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 213
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/IVcnStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnStatusCallback;

    move-result-object v2

    .line 214
    .local v2, "_arg0":Landroid/net/vcn/IVcnStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto/16 :goto_0

    .line 200
    .end local v2    # "_arg0":Landroid/net/vcn/IVcnStatusCallback;
    :pswitch_2
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 202
    .local v2, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/vcn/IVcnStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnStatusCallback;

    move-result-object v3

    .line 204
    .local v3, "_arg1":Landroid/net/vcn/IVcnStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/vcn/IVcnManagementService$Stub;->registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    goto/16 :goto_0

    .line 188
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Landroid/net/vcn/IVcnStatusCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_3
    sget-object v2, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 190
    .local v2, "_arg0":Landroid/net/NetworkCapabilities;
    sget-object v3, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .line 191
    .local v3, "_arg1":Landroid/net/LinkProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2, v3}, Landroid/net/vcn/IVcnManagementService$Stub;->getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v4

    .line 193
    .local v4, "_result":Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 195
    goto :goto_0

    .line 179
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v3    # "_arg1":Landroid/net/LinkProperties;
    .end local v4    # "_result":Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    move-result-object v2

    .line 180
    .local v2, "_arg0":Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_0

    .line 170
    .end local v2    # "_arg0":Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    move-result-object v2

    .line 171
    .restart local v2    # "_arg0":Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    goto :goto_0

    .line 160
    .end local v2    # "_arg0":Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 163
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 165
    goto :goto_0

    .line 149
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :pswitch_7
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 151
    .local v2, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3}, Landroid/net/vcn/IVcnManagementService$Stub;->clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_8
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 138
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    sget-object v3, Landroid/net/vcn/VcnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/VcnConfig;

    .line 140
    .local v3, "_arg1":Landroid/net/vcn/VcnConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/vcn/IVcnManagementService$Stub;->setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    nop

    .line 224
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Landroid/net/vcn/VcnConfig;
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
