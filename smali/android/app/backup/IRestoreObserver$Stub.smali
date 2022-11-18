.class public abstract Landroid/app/backup/IRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IRestoreObserver.java"

# interfaces
.implements Landroid/app/backup/IRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IRestoreObserver"

.field static final greylist-max-o TRANSACTION_onUpdate:I = 0x3

.field static final greylist-max-o TRANSACTION_restoreFinished:I = 0x4

.field static final greylist-max-o TRANSACTION_restoreSetsAvailable:I = 0x1

.field static final greylist-max-o TRANSACTION_restoreStarting:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.app.backup.IRestoreObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    const-string v0, "android.app.backup.IRestoreObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_1

    .line 82
    move-object v1, v0

    check-cast v1, Landroid/app/backup/IRestoreObserver;

    return-object v1

    .line 84
    :cond_1
    new-instance v1, Landroid/app/backup/IRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 93
    packed-switch p0, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_0
    const-string/jumbo v0, "restoreFinished"

    return-object v0

    .line 105
    :pswitch_1
    const-string/jumbo v0, "onUpdate"

    return-object v0

    .line 101
    :pswitch_2
    const-string/jumbo v0, "restoreStarting"

    return-object v0

    .line 97
    :pswitch_3
    const-string/jumbo v0, "restoreSetsAvailable"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 283
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Landroid/app/backup/IRestoreObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 124
    const-string v0, "android.app.backup.IRestoreObserver"

    .line 125
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 136
    packed-switch p1, :pswitch_data_1

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 132
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 167
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Landroid/app/backup/IRestoreObserver$Stub;->restoreFinished(I)V

    .line 170
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/IRestoreObserver$Stub;->onUpdate(ILjava/lang/String;)V

    .line 162
    goto :goto_0

    .line 149
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2}, Landroid/app/backup/IRestoreObserver$Stub;->restoreStarting(I)V

    .line 152
    goto :goto_0

    .line 141
    .end local v2    # "_arg0":I
    :pswitch_4
    sget-object v2, Landroid/app/backup/RestoreSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/backup/RestoreSet;

    .line 142
    .local v2, "_arg0":[Landroid/app/backup/RestoreSet;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/app/backup/IRestoreObserver$Stub;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    .line 144
    nop

    .line 177
    .end local v2    # "_arg0":[Landroid/app/backup/RestoreSet;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
