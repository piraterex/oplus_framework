.class public abstract Landroid/os/IPermissionController$Stub;
.super Landroid/os/Binder;
.source "IPermissionController.java"

# interfaces
.implements Landroid/os/IPermissionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPermissionController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IPermissionController"

.field static final greylist-max-o TRANSACTION_checkPermission:I = 0x1

.field static final greylist-max-o TRANSACTION_getPackageUid:I = 0x5

.field static final greylist-max-o TRANSACTION_getPackagesForUid:I = 0x3

.field static final greylist-max-o TRANSACTION_isRuntimePermission:I = 0x4

.field static final greylist-max-o TRANSACTION_noteOp:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.os.IPermissionController"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPermissionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "android.os.IPermissionController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPermissionController;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/os/IPermissionController;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Landroid/os/IPermissionController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPermissionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 86
    :pswitch_0
    const-string v0, "getPackageUid"

    return-object v0

    .line 82
    :pswitch_1
    const-string/jumbo v0, "isRuntimePermission"

    return-object v0

    .line 78
    :pswitch_2
    const-string v0, "getPackagesForUid"

    return-object v0

    .line 74
    :pswitch_3
    const-string/jumbo v0, "noteOp"

    return-object v0

    .line 70
    :pswitch_4
    const-string v0, "checkPermission"

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

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 302
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 97
    invoke-static {p1}, Landroid/os/IPermissionController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 101
    const-string v0, "android.os.IPermissionController"

    .line 102
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 113
    packed-switch p1, :pswitch_data_1

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 109
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v1

    .line 166
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3}, Landroid/os/IPermissionController$Stub;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    .line 171
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/os/IPermissionController$Stub;->isRuntimePermission(Ljava/lang/String;)Z

    move-result v3

    .line 159
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 161
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2}, Landroid/os/IPermissionController$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 151
    goto :goto_0

    .line 132
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 136
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IPermissionController$Stub;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 139
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    goto :goto_0

    .line 118
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 123
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IPermissionController$Stub;->checkPermission(Ljava/lang/String;II)Z

    move-result v5

    .line 125
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    nop

    .line 180
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
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
