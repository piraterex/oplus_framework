.class public abstract Landroid/hardware/input/IInputSensorEventListener$Stub;
.super Landroid/os/Binder;
.source "IInputSensorEventListener.java"

# interfaces
.implements Landroid/hardware/input/IInputSensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputSensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onInputSensorAccuracyChanged:I = 0x2

.field static final blacklist TRANSACTION_onInputSensorChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "android.hardware.input.IInputSensorEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputSensorEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "android.hardware.input.IInputSensorEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputSensorEventListener;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Landroid/hardware/input/IInputSensorEventListener;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputSensorEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 54
    packed-switch p0, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 62
    :pswitch_0
    const-string v0, "onInputSensorAccuracyChanged"

    return-object v0

    .line 58
    :pswitch_1
    const-string v0, "onInputSensorChanged"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 73
    invoke-static {p1}, Landroid/hardware/input/IInputSensorEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    move/from16 v0, p1

    const-string v1, "android.hardware.input.IInputSensorEventListener"

    .line 78
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const v3, 0xffffff

    if-gt v0, v3, :cond_0

    .line 79
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    move-object/from16 v3, p2

    .line 81
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 89
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_1

    .line 121
    move-object/from16 v15, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 85
    :pswitch_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v2

    .line 110
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 112
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 114
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 115
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    move-object/from16 v15, p0

    invoke-virtual {v15, v5, v6, v7}, Landroid/hardware/input/IInputSensorEventListener$Stub;->onInputSensorAccuracyChanged(III)V

    .line 117
    goto :goto_1

    .line 94
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :pswitch_2
    move-object/from16 v15, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 96
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 98
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 100
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 102
    .local v16, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v18

    .line 103
    .local v18, "_arg4":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    move-object/from16 v8, p0

    move v9, v5

    move v10, v6

    move v11, v7

    move-wide/from16 v12, v16

    move-object/from16 v14, v18

    invoke-virtual/range {v8 .. v14}, Landroid/hardware/input/IInputSensorEventListener$Stub;->onInputSensorChanged(IIIJ[F)V

    .line 105
    nop

    .line 124
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v16    # "_arg3":J
    .end local v18    # "_arg4":[F
    :goto_1
    return v2

    nop

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
