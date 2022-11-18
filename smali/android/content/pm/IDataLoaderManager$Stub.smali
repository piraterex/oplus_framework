.class public abstract Landroid/content/pm/IDataLoaderManager$Stub;
.super Landroid/os/Binder;
.source "IDataLoaderManager.java"

# interfaces
.implements Landroid/content/pm/IDataLoaderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IDataLoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IDataLoaderManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_bindToDataLoader:I = 0x1

.field static final blacklist TRANSACTION_getDataLoader:I = 0x2

.field static final blacklist TRANSACTION_unbindFromDataLoader:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "android.content.pm.IDataLoaderManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IDataLoaderManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoaderManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "android.content.pm.IDataLoaderManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IDataLoaderManager;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IDataLoaderManager;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Landroid/content/pm/IDataLoaderManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IDataLoaderManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 57
    packed-switch p0, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 69
    :pswitch_0
    const-string/jumbo v0, "unbindFromDataLoader"

    return-object v0

    .line 65
    :pswitch_1
    const-string v0, "getDataLoader"

    return-object v0

    .line 61
    :pswitch_2
    const-string v0, "bindToDataLoader"

    return-object v0

    nop

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

    .line 52
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 216
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 80
    invoke-static {p1}, Landroid/content/pm/IDataLoaderManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 84
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.content.pm.IDataLoaderManager"

    .line 85
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 86
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 96
    packed-switch v7, :pswitch_data_1

    .line 135
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 92
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v11

    .line 127
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {v6, v0}, Landroid/content/pm/IDataLoaderManager$Stub;->unbindFromDataLoader(I)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_0

    .line 117
    .end local v0    # "_arg0":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {v6, v0}, Landroid/content/pm/IDataLoaderManager$Stub;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object v1

    .line 120
    .local v1, "_result":Landroid/content/pm/IDataLoader;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 122
    goto :goto_0

    .line 101
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/IDataLoader;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 103
    .local v12, "_arg0":I
    sget-object v0, Landroid/content/pm/DataLoaderParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/DataLoaderParamsParcel;

    .line 105
    .local v13, "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 107
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IDataLoaderStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoaderStatusListener;

    move-result-object v16

    .line 108
    .local v16, "_arg3":Landroid/content/pm/IDataLoaderStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IDataLoaderManager$Stub;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z

    move-result v0

    .line 110
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 112
    nop

    .line 138
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Landroid/content/pm/IDataLoaderStatusListener;
    :goto_0
    return v11

    nop

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
