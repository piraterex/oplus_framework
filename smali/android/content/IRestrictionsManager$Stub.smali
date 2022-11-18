.class public abstract Landroid/content/IRestrictionsManager$Stub;
.super Landroid/os/Binder;
.source "IRestrictionsManager.java"

# interfaces
.implements Landroid/content/IRestrictionsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IRestrictionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IRestrictionsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.IRestrictionsManager"

.field static final greylist-max-o TRANSACTION_createLocalApprovalIntent:I = 0x5

.field static final greylist-max-o TRANSACTION_getApplicationRestrictions:I = 0x1

.field static final greylist-max-o TRANSACTION_hasRestrictionsProvider:I = 0x2

.field static final greylist-max-o TRANSACTION_notifyPermissionResponse:I = 0x4

.field static final greylist-max-o TRANSACTION_requestPermission:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.content.IRestrictionsManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/IRestrictionsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/IRestrictionsManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    const-string v0, "android.content.IRestrictionsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IRestrictionsManager;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/content/IRestrictionsManager;

    return-object v1

    .line 58
    :cond_1
    new-instance v1, Landroid/content/IRestrictionsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IRestrictionsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 87
    :pswitch_0
    const-string v0, "createLocalApprovalIntent"

    return-object v0

    .line 83
    :pswitch_1
    const-string/jumbo v0, "notifyPermissionResponse"

    return-object v0

    .line 79
    :pswitch_2
    const-string/jumbo v0, "requestPermission"

    return-object v0

    .line 75
    :pswitch_3
    const-string v0, "hasRestrictionsProvider"

    return-object v0

    .line 71
    :pswitch_4
    const-string v0, "getApplicationRestrictions"

    return-object v0

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

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 284
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 98
    invoke-static {p1}, Landroid/content/IRestrictionsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 102
    const-string v0, "android.content.IRestrictionsManager"

    .line 103
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 114
    packed-switch p1, :pswitch_data_1

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 161
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/IRestrictionsManager$Stub;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v2

    .line 162
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 164
    goto :goto_0

    .line 151
    .end local v2    # "_result":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 154
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3}, Landroid/content/IRestrictionsManager$Stub;->notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "_arg2":Ljava/lang/String;
    sget-object v5, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .line 143
    .local v5, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/IRestrictionsManager$Stub;->requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    goto :goto_0

    .line 128
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Landroid/os/PersistableBundle;
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/IRestrictionsManager$Stub;->hasRestrictionsProvider()Z

    move-result v2

    .line 129
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    goto :goto_0

    .line 119
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/content/IRestrictionsManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 122
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 124
    nop

    .line 171
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
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
