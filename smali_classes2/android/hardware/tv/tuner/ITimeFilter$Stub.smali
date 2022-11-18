.class public abstract Landroid/hardware/tv/tuner/ITimeFilter$Stub;
.super Landroid/os/Binder;
.source "ITimeFilter.java"

# interfaces
.implements Landroid/hardware/tv/tuner/ITimeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/ITimeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/ITimeFilter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearTimeStamp:I = 0x2

.field static final blacklist TRANSACTION_close:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSourceTime:I = 0x4

.field static final blacklist TRANSACTION_getTimeStamp:I = 0x3

.field static final blacklist TRANSACTION_setTimeStamp:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->markVintfStability()V

    .line 56
    sget-object v0, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/ITimeFilter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    sget-object v0, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/tv/tuner/ITimeFilter;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/ITimeFilter;

    return-object v1

    .line 71
    :cond_1
    new-instance v1, Landroid/hardware/tv/tuner/ITimeFilter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 75
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

    .line 79
    sget-object v0, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 103
    packed-switch p1, :pswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 87
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1

    .line 92
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v1

    .line 98
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 136
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->close()V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_0

    .line 129
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getSourceTime()J

    move-result-wide v2

    .line 130
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    goto :goto_0

    .line 122
    .end local v2    # "_result":J
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getTimeStamp()J

    move-result-wide v2

    .line 123
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    goto :goto_0

    .line 116
    .end local v2    # "_result":J
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->clearTimeStamp()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    goto :goto_0

    .line 108
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 109
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2, v3}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->setTimeStamp(J)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    nop

    .line 145
    .end local v2    # "_arg0":J
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
