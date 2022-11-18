.class public abstract Landroid/hardware/vibrator/IVibratorManager$Stub;
.super Landroid/os/Binder;
.source "IVibratorManager.java"

# interfaces
.implements Landroid/hardware/vibrator/IVibratorManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/IVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/IVibratorManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelSynced:I = 0x6

.field static final blacklist TRANSACTION_getCapabilities:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getVibrator:I = 0x3

.field static final blacklist TRANSACTION_getVibratorIds:I = 0x2

.field static final blacklist TRANSACTION_prepareSynced:I = 0x4

.field static final blacklist TRANSACTION_triggerSynced:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->markVintfStability()V

    .line 59
    sget-object v0, Landroid/hardware/vibrator/IVibratorManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    sget-object v0, Landroid/hardware/vibrator/IVibratorManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/vibrator/IVibratorManager;

    if-eqz v1, :cond_1

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/hardware/vibrator/IVibratorManager;

    return-object v1

    .line 74
    :cond_1
    new-instance v1, Landroid/hardware/vibrator/IVibratorManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/vibrator/IVibratorManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 78
    return-object p0
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

    .line 82
    sget-object v0, Landroid/hardware/vibrator/IVibratorManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 83
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 90
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 95
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return v1

    .line 101
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v1

    .line 152
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->cancelSynced()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    goto :goto_0

    .line 144
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v2

    .line 145
    .local v2, "_arg0":Landroid/hardware/vibrator/IVibratorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibratorManager$Stub;->triggerSynced(Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    goto :goto_0

    .line 135
    .end local v2    # "_arg0":Landroid/hardware/vibrator/IVibratorCallback;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 136
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibratorManager$Stub;->prepareSynced([I)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":[I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getVibrator(I)Landroid/hardware/vibrator/IVibrator;

    move-result-object v3

    .line 128
    .local v3, "_result":Landroid/hardware/vibrator/IVibrator;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 130
    goto :goto_0

    .line 117
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/vibrator/IVibrator;
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getVibratorIds()[I

    move-result-object v2

    .line 118
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 120
    goto :goto_0

    .line 110
    .end local v2    # "_result":[I
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getCapabilities()I

    move-result v2

    .line 111
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    nop

    .line 161
    .end local v2    # "_result":I
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
