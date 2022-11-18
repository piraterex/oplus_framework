.class public abstract Landroid/app/backup/IRestoreSession$Stub;
.super Landroid/os/Binder;
.source "IRestoreSession.java"

# interfaces
.implements Landroid/app/backup/IRestoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IRestoreSession"

.field static final greylist-max-o TRANSACTION_endRestoreSession:I = 0x5

.field static final greylist-max-o TRANSACTION_getAvailableRestoreSets:I = 0x1

.field static final greylist-max-o TRANSACTION_restoreAll:I = 0x2

.field static final greylist-max-o TRANSACTION_restorePackage:I = 0x4

.field static final blacklist TRANSACTION_restorePackages:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 110
    const-string v0, "android.app.backup.IRestoreSession"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IRestoreSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 118
    if-nez p0, :cond_0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    const-string v0, "android.app.backup.IRestoreSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 122
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IRestoreSession;

    if-eqz v1, :cond_1

    .line 123
    move-object v1, v0

    check-cast v1, Landroid/app/backup/IRestoreSession;

    return-object v1

    .line 125
    :cond_1
    new-instance v1, Landroid/app/backup/IRestoreSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IRestoreSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 134
    packed-switch p0, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 154
    :pswitch_0
    const-string v0, "endRestoreSession"

    return-object v0

    .line 150
    :pswitch_1
    const-string/jumbo v0, "restorePackage"

    return-object v0

    .line 146
    :pswitch_2
    const-string/jumbo v0, "restorePackages"

    return-object v0

    .line 142
    :pswitch_3
    const-string/jumbo v0, "restoreAll"

    return-object v0

    .line 138
    :pswitch_4
    const-string v0, "getAvailableRestoreSets"

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

    .line 129
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 435
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 165
    invoke-static {p1}, Landroid/app/backup/IRestoreSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.app.backup.IRestoreSession"

    .line 170
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 171
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_0
    move-object/from16 v11, p2

    .line 173
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 181
    packed-switch v7, :pswitch_data_1

    .line 247
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 177
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v10

    .line 241
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IRestoreSession$Stub;->endRestoreSession()V

    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto/16 :goto_1

    .line 228
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v1

    .line 232
    .local v1, "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 233
    .local v2, "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/backup/IRestoreSession$Stub;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v3

    .line 235
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    goto :goto_1

    .line 212
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v2    # "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 214
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v14

    .line 216
    .local v14, "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 218
    .local v15, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v16

    .line 219
    .local v16, "_arg3":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IRestoreSession$Stub;->restorePackages(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v0

    .line 221
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    goto :goto_1

    .line 198
    .end local v0    # "_result":I
    .end local v12    # "_arg0":J
    .end local v14    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v16    # "_arg3":Landroid/app/backup/IBackupManagerMonitor;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 200
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v2

    .line 202
    .local v2, "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    .line 203
    .local v3, "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/backup/IRestoreSession$Stub;->restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v4

    .line 205
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    goto :goto_1

    .line 186
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v3    # "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v0

    .line 188
    .local v0, "_arg0":Landroid/app/backup/IRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    .line 189
    .local v1, "_arg1":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {v6, v0, v1}, Landroid/app/backup/IRestoreSession$Stub;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v2

    .line 191
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    nop

    .line 250
    .end local v0    # "_arg0":Landroid/app/backup/IRestoreObserver;
    .end local v1    # "_arg1":Landroid/app/backup/IBackupManagerMonitor;
    .end local v2    # "_result":I
    :goto_1
    return v10

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
