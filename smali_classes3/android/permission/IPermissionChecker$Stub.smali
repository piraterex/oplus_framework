.class public abstract Landroid/permission/IPermissionChecker$Stub;
.super Landroid/os/Binder;
.source "IPermissionChecker.java"

# interfaces
.implements Landroid/permission/IPermissionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/IPermissionChecker$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_checkOp:I = 0x3

.field static final blacklist TRANSACTION_checkPermission:I = 0x1

.field static final blacklist TRANSACTION_finishDataDelivery:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    sget-object v0, Landroid/permission/IPermissionChecker$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/permission/IPermissionChecker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionChecker;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    sget-object v0, Landroid/permission/IPermissionChecker$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/permission/IPermissionChecker;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Landroid/permission/IPermissionChecker;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Landroid/permission/IPermissionChecker$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/permission/IPermissionChecker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Landroid/permission/IPermissionChecker$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 57
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    const v5, 0xffffff

    if-gt v0, v5, :cond_0

    .line 58
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 68
    packed-switch v0, :pswitch_data_1

    .line 125
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 64
    :pswitch_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v4

    .line 108
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 110
    .local v5, "_arg0":I
    sget-object v6, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroid/content/AttributionSourceState;

    .line 112
    .local v12, "_arg1":Landroid/content/AttributionSourceState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 116
    .local v14, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 117
    .local v15, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    move-object/from16 v6, p0

    move v7, v5

    move-object v8, v12

    move-object v9, v13

    move v10, v14

    move v11, v15

    invoke-virtual/range {v6 .. v11}, Landroid/permission/IPermissionChecker$Stub;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result v6

    .line 119
    .local v6, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    goto :goto_0

    .line 95
    .end local v5    # "_arg0":I
    .end local v6    # "_result":I
    .end local v12    # "_arg1":Landroid/content/AttributionSourceState;
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":Z
    .end local v15    # "_arg4":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 97
    .restart local v5    # "_arg0":I
    sget-object v6, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/AttributionSourceState;

    .line 99
    .local v6, "_arg1":Landroid/content/AttributionSourceState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 100
    .local v7, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    move-object/from16 v15, p0

    invoke-virtual {v15, v5, v6, v7}, Landroid/permission/IPermissionChecker$Stub;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    goto :goto_0

    .line 73
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Landroid/content/AttributionSourceState;
    .end local v7    # "_arg2":Z
    :pswitch_3
    move-object/from16 v15, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "_arg0":Ljava/lang/String;
    sget-object v6, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/AttributionSourceState;

    .line 77
    .restart local v6    # "_arg1":Landroid/content/AttributionSourceState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 81
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 83
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 85
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 86
    .local v19, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    move-object/from16 v8, p0

    move-object v9, v5

    move-object v10, v6

    move-object v11, v7

    move/from16 v12, v16

    move/from16 v13, v17

    move/from16 v14, v18

    move/from16 v15, v19

    invoke-virtual/range {v8 .. v15}, Landroid/permission/IPermissionChecker$Stub;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result v8

    .line 88
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    nop

    .line 128
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/AttributionSourceState;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":I
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":I
    :goto_0
    return v4

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
