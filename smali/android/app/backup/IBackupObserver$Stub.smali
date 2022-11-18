.class public abstract Landroid/app/backup/IBackupObserver$Stub;
.super Landroid/os/Binder;
.source "IBackupObserver.java"

# interfaces
.implements Landroid/app/backup/IBackupObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupObserver"

.field static final greylist-max-o TRANSACTION_backupFinished:I = 0x3

.field static final greylist-max-o TRANSACTION_onResult:I = 0x2

.field static final greylist-max-o TRANSACTION_onUpdate:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "android.app.backup.IBackupObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    const-string v0, "android.app.backup.IBackupObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IBackupObserver;

    if-eqz v1, :cond_1

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/app/backup/IBackupObserver;

    return-object v1

    .line 75
    :cond_1
    new-instance v1, Landroid/app/backup/IBackupObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IBackupObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 84
    packed-switch p0, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 96
    :pswitch_0
    const-string v0, "backupFinished"

    return-object v0

    .line 92
    :pswitch_1
    const-string/jumbo v0, "onResult"

    return-object v0

    .line 88
    :pswitch_2
    const-string/jumbo v0, "onUpdate"

    return-object v0

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

    .line 79
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 245
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 107
    invoke-static {p1}, Landroid/app/backup/IBackupObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 111
    const-string v0, "android.app.backup.IBackupObserver"

    .line 112
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 113
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 123
    packed-switch p1, :pswitch_data_1

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 119
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return v1

    .line 148
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Landroid/app/backup/IBackupObserver$Stub;->backupFinished(I)V

    .line 151
    goto :goto_0

    .line 138
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/IBackupObserver$Stub;->onResult(Ljava/lang/String;I)V

    .line 143
    goto :goto_0

    .line 128
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/app/backup/BackupProgress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/backup/BackupProgress;

    .line 131
    .local v3, "_arg1":Landroid/app/backup/BackupProgress;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/IBackupObserver$Stub;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    .line 133
    nop

    .line 158
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/backup/BackupProgress;
    :goto_0
    return v1

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
