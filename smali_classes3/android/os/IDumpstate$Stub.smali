.class public abstract Landroid/os/IDumpstate$Stub;
.super Landroid/os/Binder;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IDumpstate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstate$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelBugreport:I = 0x2

.field static final blacklist TRANSACTION_startBugreport:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.os.IDumpstate"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDumpstate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "android.os.IDumpstate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDumpstate;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/os/IDumpstate;

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Landroid/os/IDumpstate$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDumpstate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_0
    const-string v0, "cancelBugreport"

    return-object v0

    .line 86
    :pswitch_1
    const-string/jumbo v0, "startBugreport"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Landroid/os/IDumpstate$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    move/from16 v0, p1

    const-string v1, "android.os.IDumpstate"

    .line 106
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const v3, 0xffffff

    if-gt v0, v3, :cond_0

    .line 107
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    move-object/from16 v3, p2

    .line 109
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 117
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_1

    .line 153
    move-object/from16 v15, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 113
    :pswitch_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v2

    .line 143
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 145
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    move-object/from16 v15, p0

    invoke-virtual {v15, v5, v6}, Landroid/os/IDumpstate$Stub;->cancelBugreport(ILjava/lang/String;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_1

    .line 122
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v15, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 124
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 126
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    .line 128
    .local v16, "_arg2":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    .line 130
    .local v17, "_arg3":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 132
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    move-result-object v19

    .line 134
    .local v19, "_arg5":Landroid/os/IDumpstateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 135
    .local v20, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    move-object/from16 v7, p0

    move v8, v5

    move-object v9, v6

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v14, v20

    invoke-virtual/range {v7 .. v14}, Landroid/os/IDumpstate$Stub;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;Z)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    nop

    .line 156
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/io/FileDescriptor;
    .end local v17    # "_arg3":Ljava/io/FileDescriptor;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Landroid/os/IDumpstateListener;
    .end local v20    # "_arg6":Z
    :goto_1
    return v2

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
